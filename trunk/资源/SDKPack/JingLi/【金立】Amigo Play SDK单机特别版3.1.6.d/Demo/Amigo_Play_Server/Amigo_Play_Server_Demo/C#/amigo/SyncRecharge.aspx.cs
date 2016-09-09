using App3rdBLL;
using App3rdComm;
using App3rdModel;
using Newtonsoft.Json.Linq;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppAmigo
{
    public partial class SyncRecharge : System.Web.UI.Page
    {
        private SyncAmigoModel model;
        private SyncAmigoBLL bll;
        protected void Page_Load(object sender, EventArgs e)
        {
            LogForm();
            Sync();
        }

        private void Sync()
        {
            if (!string.IsNullOrEmpty(Request.Form["api_key"]))
            {
                if (VerifyRsaSign(Request.Form))
                {
                    //验证成功后的逻辑处理
                    Response.Write("success");
                }

            }
        }

        private void LogForm()
        {
            NameValueCollection form = Request.Form;
            JObject json = new JObject();

            foreach (string key in form)
            {
                json.Add(key, form[key].ToString());
            }

            NameValueCollection query = Request.QueryString;
            foreach (string key in query)
            {
                json.Add(key, query[key].ToString());
            }

            LogHelper.WriteLog(json.ToString());
        }

        private bool VerifyRsaSign(NameValueCollection ps)
        {
            ArrayList keys = new ArrayList();
            foreach (string key in ps.Keys)
            {
                if (!"sign".Equals(key))
                {
                    keys.Add(key);
                }
            }
            keys.Sort();
            StringBuilder sb = new StringBuilder();
            foreach (string key in keys)
            {
                sb.Append(key + "=" + ps[key] + "&");
            }

            string content = sb.ToString().Substring(0, sb.Length - 1);
            return Security.RSAWithPubKeyVerify(content, ps["sign"], AppConfig.PublicKey);
        }

        public bool RSAWithPubKeyVerify(string content, string sign, string publicKey)
        {
            RSAParameters paraPub = RSAFromPkcs8.ConvertFromPublicKey(publicKey);
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            rsa.ImportParameters(paraPub);

            byte[] bSign = Convert.FromBase64String(sign);
            byte[] bDate = Encoding.UTF8.GetBytes(content);

            return rsa.VerifyData(bDate, new SHA1CryptoServiceProvider(), bSign);
        }
    }
}