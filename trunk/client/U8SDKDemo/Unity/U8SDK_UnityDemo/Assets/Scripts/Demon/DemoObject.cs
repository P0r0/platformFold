using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;

public class DemoObject : MonoBehaviour {

	// Use this for initialization

    private Text txtState;

	void Start () {
		U8SDKInterface.Instance.Init ();
        U8SDKCallback.InitCallback();

        GameObject loginObj = GameObject.Find("BtnLogin");
        Button btnLogin = loginObj.GetComponent<Button>();
        btnLogin.onClick.AddListener(delegate()
        {
            OnLoginClick();
        });

        Button BtnAd1 = GameObject.Find("BtnAd1").GetComponent<Button>();
        BtnAd1.onClick.AddListener(delegate
        {
            OnbannerAdClick();
        });

        GameObject logoutObj = GameObject.Find("BtnLogout");
        Button btnLogout = logoutObj.GetComponent<Button>();
        btnLogout.onClick.AddListener(delegate()
        {
            OnLogoutClick();
        });

        GameObject payObj = GameObject.Find("BtnPay");
        Button btnPay = payObj.GetComponent<Button>();
        btnPay.onClick.AddListener(delegate()
        {
            OnPayClick();
        });

        GameObject stateObj = GameObject.Find("TxtState");
        txtState = stateObj.GetComponent<Text>();
        

        U8SDKInterface.Instance.OnLoginSuc = delegate(U8LoginResult result)
        {
            OnLoginSuc(result);
        };

        U8SDKInterface.Instance.OnLogout = delegate()
        {
            OnLogout();
        };

        U8SDKInterface.Instance.OnPaySuc = delegate (U8PayResult result)
        {
            OnPayResult(result);
        };
	}

    private void OnbannerAdClick()
    {
        U8SDKInterface.Instance.ShowAd();
    }

    void Update()
    {
        if (Input.GetKeyUp(KeyCode.Escape))
        {
            if (!U8SDKInterface.Instance.SDKExit())
            {
                //TODO 退出确认框
                Application.Quit();
            }
        }
    }


    void OnLoginSuc(U8LoginResult result)
    {
        if (!result.isSuc)
        {
            txtState.text = "登录失败";
            return;
        }

        if (result.isSwitchAccount)
        {
            txtState.text = "切换帐号成功:" + result.token;
        }
        else
        {
            txtState.text = "登录成功:" + result.token;
        }
    }

    private void OnPayResult(U8PayResult result)
    {
        txtState.text = "支付成功，商品id： " + result.productID;
    }

    void OnPush()
    {

    }

    void OnLogout()
    {
        txtState.text = "未登录";
    }

    void OnLoginClick()
    {
        bool isSuppotLogin = U8SDKInterface.Instance.IsSuportLogin();
        Debug.LogError("[LoginSupport]" + isSuppotLogin);
        if(isSuppotLogin)
            U8SDKInterface.Instance.Login();
    }

    void OnLogoutClick()
    {
        U8SDKInterface.Instance.Logout();
    }

    void OnPayClick()
    {
        U8PayParams data = new U8PayParams();
        data.productId = "1";
        data.productName = "元宝";
        data.productDesc = "购买100元宝，赠送20元宝";
        data.price = 100;
        data.buyNum = 1;
        data.coinNum = 300;
        data.serverId = "10";
        data.serverName = "地狱之恋";
        data.roleId = "u8_24532452";
        data.roleName = "麻利麻利吼";
        data.roleLevel = 15;
        data.vip = "v15";
        data.orderID = "1234567890123456";
        data.egameCode = "001";
        data.meegoCode = "001";
        data.unicomCode = "001";
        data.mmCode = "001";

        U8SDKInterface.Instance.Pay(data);
    }
}
