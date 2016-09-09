using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

//金立
namespace AppAmigo
{
    public class AppConfig
    {

        public static string ApiKey
        {
            get
            {
                return "";
            }
        }

        /// <summary>
        /// 私钥
        /// </summary>
        public static string PrivateKey
        {
            get
            {
                return "";
                    
            }
        }

        /// <summary>
        /// 公钥
        /// </summary>
        public static string PublicKey
        {
            get
            {
                return "";
            }
        }
    }
}