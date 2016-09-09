#if UNITY_IPHONE
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using AKiOS;

public class SDKInterfaceIOS : U8SDKInterface
{
	NSObject u8SDK;
	NSObject u8User;
	NSObject u8Pay;

	// move init to application didFinishLaunchingWithOptions
    public override void Init()
	{
		Class clsU8SDK = Class.FindByName ("U8SDK");
		u8SDK = clsU8SDK.Call ("sharedInstance").Cast<NSObject> ();
		u8User = u8SDK.valueForKey ("defaultUser").Cast<NSObject> ();
		u8Pay = u8SDK.valueForKey ("defaultPay").Cast<NSObject> ();

		u8SDK.Call ("setupWithParams:", NSDictionary.dictionary ());
    }

    public override void Login()
    {
		u8User.Call ("login");
    }

    public override void LoginCustom(string customData)
    {
		u8User.Call ("loginCustom:", new NSString(customData));
    }

    public override void SwitchLogin()
    {
		u8User.Call ("switchAccount");
    }

    public override bool Logout()
    {
		return u8User.Call ("logout").AsBool ();
    }

    public override bool ShowAccountCenter()
    {
		return u8User.Call ("showAccountCenter").AsBool();
    }

    public override void SubmitGameData(U8ExtraGameData data)
	{
		Dictionary<string, object> map = new Dictionary<string, object>();
		map.Add("dataType", data.dataType);
		map.Add("roleID", data.roleID);
		map.Add("roleName", data.roleName);
		map.Add("roleLevel", data.roleLevel);
		map.Add("serverID", data.serverID);
		map.Add("serverName", data.serverName);
		map.Add("moneyNum", data.moneyNum);

		u8SDK.Call("submitGameData", NSDictionary.CsToOc(map));
    }

    public override bool SDKExit()
    {
		return u8SDK.Call ("exit").AsBool();
    }

    public override void Pay(U8PayParams data)
	{
		string json = encodePayParams(data);

		Class clsProductInfo = Class.FindByName ("U8ProductInfo");
		NSObject info = clsProductInfo.Call ("productFromJsonString:", new NSString (json));

		u8Pay.Call ("pay:", info);
    }

    public override bool IsSupportExit()
    {
		return u8SDK.Call ("isSupportExit").AsBool();
    }

    public override bool IsSupportAccountCenter()
    {
		return u8User.Call ("isSupportAccountCenter").AsBool();
    }

    public override bool IsSupportLogout()
    {
		return u8User.Call ("isSupportLogout").AsBool();
    }
	
	private string encodePayParams(U8PayParams data)
	{
		Dictionary<string, object> map = new Dictionary<string, object>();
		map.Add("productId", data.productId);
		map.Add("productName", data.productName);
		map.Add("productDesc", data.productDesc);
		map.Add("price", data.price);
		map.Add("buyNum", data.buyNum);
		map.Add("coinNum", data.coinNum);
		map.Add("serverId", data.serverId);
		map.Add("serverName", data.serverName);
		map.Add("roleId", data.roleId);
		map.Add("roleName", data.roleName);
		map.Add("roleLevel", data.roleLevel);
		map.Add("vip", data.vip);
		map.Add("orderID", data.orderID);
		map.Add("extension", data.extension);
		
		return MiniJSON.Json.Serialize(map);        
	}
}
#endif