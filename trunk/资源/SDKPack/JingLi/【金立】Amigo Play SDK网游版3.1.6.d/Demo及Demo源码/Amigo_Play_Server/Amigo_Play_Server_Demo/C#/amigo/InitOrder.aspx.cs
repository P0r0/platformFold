using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using App3rdComm;
using System.IO;
using System.Collections.Specialized;
using System.Text;
using System.Collections;

using System.Net.Security;
using System.Security.Cryptography.X509Certificates;

namespace AppAmigo
{
    public partial class InitOrder : System.Web.UI.Page
    {
        private string amount;
        private string playerId;
        private string productName;
        private string orderId;
        private string subTime;
        private string appUrl;
        private string deliverTtype = "1";
        protected void Page_Load(object sender, EventArgs e)
        {
            //GetSign();
            LogForm();
            GetOrder();
        }

        private void GetOrder()
        {
            try
            {
                if (!string.IsNullOrEmpty(Request.Params["playerId"]))
                {
                    /*支付的参数从客户端上传，包括金额*/
                    amount = Request.Params["amount"];
                    playerId = Request.Params["playerId"];
                    productName = Request.Params["productName"];
                    orderId = Guid.NewGuid().ToString().Replace("-", "");
                    subTime = DateTime.Now.ToString("yyyyMMddHHmmss");
                    appUrl = GetAppUrl();//Request.Params["url"];
                    LogHelper.WriteLog("金立获取服务端同步地址" +  appUrl);
                    GetAmigoOrder();
                }
            }
            catch (Exception ex)
            {
                //LogHelper.WriteLog("金立创建订单失败：" + ex.ToString());

            }


        }

        /// <summary>
        /// 拼接服务端同步地址
        /// 为了是添加部分自定义字段信息
        /// </summary>
        /// <returns></returns>
        private string GetAppUrl()
        {
            string url = Request.Form["url"];
            string roleId = Request.Form["roleId"];
            string areaId = Request.Form["areaId"];
            return string.Format("{0}?roleId={1}&areaId={2}", url, roleId, areaId);
        }

        private string RsaSign(JObject postArray)
        {
            ArrayList keys = new ArrayList();
            foreach (JToken child in postArray.Children())
            {
                JProperty property = child as JProperty;
                keys.Add(property.Name);
            }
            keys.Sort();
            StringBuilder sb = new StringBuilder();
            foreach (string key in keys)
            {
                sb.Append(postArray[key]);
            }
            LogHelper.WriteLog("金立创建订单字段信息：" + sb.ToString());

            return RsaWithPrivateKeySign(sb.ToString(), AppConfig.PrivateKey);

        }

        public static String RsaWithPrivateKeySign(string content, string privateKey)
        {
            RSACryptoServiceProvider rsa = RSAFromPkcs8.DecodePemPrivateKey(privateKey);
            byte[] signedData = rsa.SignData(Encoding.UTF8.GetBytes(content), new SHA1CryptoServiceProvider());
            return Convert.ToBase64String(signedData);
        }

        private void LogForm()
        {
            NameValueCollection p = Request.Form;
            JObject json = new JObject();

            foreach (string key in p)
            {
                json.Add(key, p[key].ToString());
            }

            LogHelper.WriteLog(json.ToString());
        }

        
        private void GetAmigoOrder()
        {
            JObject ps = new JObject(); // using json .net
            ps["api_key"] = AppConfig.ApiKey;//"FF20A4B3BCD44F1380DEECADFC6657D3"; // (demo用);
            ps["subject"] = productName;
            ps["out_order_no"] = orderId;
            ps["deliver_type"] = deliverTtype;// "1";
            ps["deal_price"] = amount;
            ps["total_fee"] = amount;
            ps["submit_time"] = DateTime.Now.ToString("yyyyMMddHHmmss");//String.Format(DateTime.Now, "yyyyMMddHHmmss");
            ps["notify_url"] = appUrl;
            ps["sign"] = RsaSign(ps);
            ps["player_id"] = playerId;

            string amigoUrl = "https://pay.gionee.com/order/create"; // 创建金立订单接口URL

            HttpWebRequest request = WebRequest.Create(amigoUrl) as HttpWebRequest;
            request.ProtocolVersion = HttpVersion.Version10;
            request.Method = "POST";
            request.ContentType = "application/json";
            request.UserAgent = "Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.2; SV1; .NET CLR 3.5.21022; .NET CLR 4.0.30319)";

            byte[] data = Encoding.UTF8.GetBytes(ps.ToString());
            request.ContentLength = data.Length;
            Stream stream = request.GetRequestStream();
            stream.Write(data, 0, data.Length);
            stream.Close();

            HttpWebResponse response = request.GetResponse() as HttpWebResponse;
            StreamReader reader = new StreamReader(response.GetResponseStream());
            string result = reader.ReadToEnd();
            reader.Close();

            Response.Write(result);

            /*//订单创建成功的状态码判断
            if ("200010000".Equals(json["status"]))
            {
                Response.Write(json.ToString());
            }*/
        }
    }
}