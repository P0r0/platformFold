namespace Test {
	
	private class Utils {  
		static readonly Random r = new Random();  
		const string _chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";  
		
		public static string RandomString(int len) {  
			char[] buffer = new char[len];
			for (int i = 0; i < len; i++) {  
				buffer[i] = _chars[r.Next(_chars.Length)];  
			}
			return new string(buffer);  
		}
		
		public static string TrimString(string text) {
			if (text == null || text.Length == 0) {
				return text;
			}
			return text.Trim();
		}
		
		public static String RsaSign(string text, string privateKey) {
			RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
			rsa.ImportCspBlob(Convert.FromBase64String(privateKey));
			byte[] signedData = rsa.SignData(Encoding.UTF8.GetBytes(text), new SHA1CryptoServiceProvider());
			return Convert.ToBase64String(signedData);
		}
		
		public static bool VerifyRsaSign(string dataToVerify, string sign, string publicKey) {
			byte[] bSign = Convert.FromBase64String(sign);
			byte[] data = Encoding.UTF8.GetBytes(dataToVerify);
			
			RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
			RSAParameters paraPub = ConvertFromPublicKey(publicKey);
            rsa.ImportParameters(paraPub);
			
			return rsa.VerifyData(data, new SHA1CryptoServiceProvider(), bSign);
    }
		
		private static RSAParameters ConvertFromPublicKey(string pemFileConent)
        {

            byte[] keyData = Convert.FromBase64String(pemFileConent);
            if (keyData.Length < 162)
            {
                throw new ArgumentException("pem file content is incorrect.");
            }
            byte[] pemModulus = new byte[128];
            byte[] pemPublicExponent = new byte[3];
            Array.Copy(keyData, 29, pemModulus, 0, 128);
            Array.Copy(keyData, 159, pemPublicExponent, 0, 3);
            RSAParameters para = new RSAParameters();
            para.Modulus = pemModulus;
            para.Exponent = pemPublicExponent;
            return para;
        }
		
		public static string HmacSha1(string text, string key) {
			HMACSHA1 hmacsha1 = new HMACSHA1();
            hmacsha1.Key = Encoding.UTF8.GetBytes(key);
            byte[] dataBuffer = Encoding.UTF8.GetBytes(text);
            byte[] hashBytes = hmacsha1.ComputeHash(dataBuffer);
            return Convert.ToBase64String(hashBytes); 
		}
		
		private static bool CheckValidation(object sender, X509Certificate certificate, X509Chain chain, SslPolicyErrors errors) {
			return true;
		} 
		
		public static String PostByHttps(string url, IDictionary<string, string> headers, string data) {
			ServicePointManager.ServerCertificateValidationCallback = new RemoteCertificateValidationCallback(CheckValidationResult);  
			HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
			request.ProtocolVersion = HttpVersion.Version10;
			request.Method = "POST";
			if (headers != null && headers.Count > 0) {
				foreach (string key in headers.Keys) {
					request.Headers.Add(key, headers[key]);
				}
			}
			if (data != null) {
				byte []array = Encoding.UTF8.GetBytes(data);
				using (Stream stream = request.GetRequestStream()) {
					stream.Write(array, 0, array.Length);
				}
			}
			HttpWebResponse response = request.GetResponse() as HttpWebResponse;
			
			String encoding = "UTF-8";
			if (respones.ContentEncoding != null) {
				encoding = respones.ContentEncoding;
			}
			
			using(StreamReader reader = new StreamReader(response.GetResponseStream(), System.Text.Encoding.GetEncoding(encoding))) {
				return reader.ReadToEnd();
			}
		}
 }
	
	public class LoginDemo : IHttpHandler {
		
		public bool IsReusable {
			get {
				return false;
			}
		}
		
		public void ProcessRequest(HttpContext context) {
			string playId = Utils.TrimString(context.Request["playId"]);
			string isGuest = Utils.TrimString(context.Request["isGuest"]);
			string amigoToken = Utils.TrimString(context.Request["token"]);
			
			if (!Convert.ToBoolean(isGuest)) { // 正式账号需要验证
				JObject result = VerifyToken(amigoToken); // using json .net
				if (result["r"] != null) {
					// verify successful
				}
			}
			// do others
		}
		
		private static JObject VerifyToken(string token) {
			string verifiedURL = "https://id.gionee.com/account/verify.do";
			string apiKey = @"替换成商户申请获取的API KEY";
            string secretKey = @"替换成商户申请获取的secretKey";
			string host = "id.gionee.com";
			string port = "443";
			string uri = "/account/verify.do";
			string method = "POST";
			string nonce = Utils.RandomString(8);
			int ts = (int) (DateTime.UtcNow - new DateTime(1970, 1, 1)).TotalSeconds;
			
			string signatureString =  Convert.ToString(ts) + "\n" + nonce + "\n" + method + "\n" + uri + "\n" + host + "\n" + Convert.ToString(port) + "\n" + "\n";
			string signature = Utils.HmacSha1(signatureString, secretKey);
			
			string auth = "MAC id=\"" + apiKey + "\",ts=\"" + ts + "\",nonce=\"" + nonce + "\",mac=\"" + signature + "\"";
			
			IDictionary<string, string> headers = new Dictionary<string, string>();
			headers.add("Authorization", auth);
			
			string resp = Utils.PostByHttps(verifiedURL, headers, token);
			
			return JObject.Parse(resp); // using json .net
		}
		
	}
	
	public class PayDemo : IHttpHandler {
		
		public bool IsReusable {
			get {
				return false;
			}
		}
		
		public void ProcessRequest(HttpContext context) {
			string ac = context.Request["ac"];
			if ("get_out_order_no".equals(ac)) { // 生成内部订单，创建金立订单
				JObject para = new JObject(); // using json .net
				para["api_key"] = "FF20A4B3BCD44F1380DEECADFC6657D3"; // (demo用);
				para["subject"] = "你的支付标题";
				para["out_order_no"] = "你自己生成的内部订单";
				para["deliver_type"] = "1";
				para["deal_price"] = "需要支付的金额";
				para["total_fee"] = "需要支付的金额";
				para["submit_time"] = String.format(DateTime.Now, "yyyyMMddHHmmss");
				para["notify_url"] = "你的notify URL";
				para["sign"] = RsaSign(para);
				para["player_id"] = "amigo玩家id(例如:amigo_player001)";
				
				string url = "https://pay.gionee.com/order/create"; // 创建金立订单接口URL
				
				JObject result = JObject.Parse(Utils.PostByHttps(url, null, para.ToString()));
				
				//订单创建成功的状态码判断
				if (!"200010000".equals(result["status"])) {
					//创建失败处理
				}
				
				// 记录下你得到的params['out_order_no']和result['order_no']的对应关系，充值回调的时候要使用的
				// do others
			} else { //充值回调信息
                if (!VerifyRsaSign(context.Request.QueryString)) {
					// sign error
				}
				// 先查询到给过来的内部订单号对应的金立的订单号，然后是自己的充值流程
			}
		}
		
		private static string RsaSign(JObject postArray) {
			ArrayList keys = new ArrayList();
			foreach (JToken child in postArray.Children()) {
				JProperty property = child as JProperty;
				keys.add(property.Name);
			}
			keys.Sort();
			StringBuilder signatureString = new StringBuilder();
			foreach (string key in keys) {
				signatureString.Append(postArray[key]);
			}
			
			string privateKey= @"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAN33eE2nD7fcBF/WNxTukvffy9NTXeWduFjfsyzVXPLXbxysQDsOJpoXIYhwU0Dif1bpT9BHY74Jnymw3+/D2bTM1mc+r0G84hSQ67wjL4fr3gY9UP5GgUCEX2t2lp9CLv0RU68elISSCE7Or+jN0kXLxhC1ZlxEmskNc8y7o87jAgMBAAECgYEAoWRi0PN79k+/zn9PpaSisCDFb27agy5e8CAXg63P27LRU6PbQBVV9AyFkVM69Z66wFL8eZCu8WrFk+bLrOZW0Ei2v8MHru1aYkX1Oa0hprob8O0hlr8Wxri1VHxSXOHq3MTD/NM9bAB2Kb6coqpR4T2Poajtk5zXyNZMiDeiPYECQQDzRm6RlXaKorHRbAhYXfktQ/0o+hZSidzYaDDKlUijZFF2CmczK93/na0HRwoIEUTyucLdL2BVipyu5cu7rb6xAkEA6ZO1O9WkJRxWxtnO5h0HNsEsH1mSRa5sjK1i2QJ4h1OxLJz4+P/UrXAvj1/sgnfxUG/eDh0WOTmz6V370fCT0wJAGzwyWrgZ6lFmiOSIVqRGpiurZvAAmcL3Z37an4Nw+2HawNVPUmpB00EqwtrQI7ETP/1N9Ic+SLVY7zeoxF0iMQJBAKSQ+xmjFjlHVCRaBRm/zftX8pxL4XDSyYv8BS7cPMsrviKungPhS5i+9+NONDZgB1ci2hKbj7LV4tpC608o7x0CQDY8BmLv63BNxS9/1s7X6thmVzP6co2fKdpWr5gw3E5bBXr2VJAInc5CfuDjaX2iRiYjvYLpC8QOWfxqTBLokY0="; // demo用

			return Utils.RsaSign(signatureString.ToString(), privateKey);
		}
		
		private static boolean VerifyRsaSign(NameValueCollection para) {
			ArrayList keys = new ArrayList();
			foreach (string key in para.Keys) {
				if (!"sign".equals(key)) {
					keys.add(key);
				}
			}
			keys.Sort();
			StringBuilder signatureString = new StringBuilder();
			foreach (string key in keys) {
				signatureString.Append(key + "=" + para[key] + "&");
			}
			
			string publicKey = "金立提供的充值公钥";
			
			return Utils.VerifyRsaSign(signatureString.SubString(0, signatureString.Length-1), para["sign"], publicKey);
		}
		
	}
	
}