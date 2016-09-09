-------------------------------------
-- U8SDK
-------------------------------------
local json = require("json")

function OnInitSuc(initParams)
	-- initParams:
	-- 	(bool)isSupportExit
	-- 	(bool)isSupportAccountCenter
	-- 	(bool)isSupportLogout
	-- 	(int) operatorName --当前运营商名称(1.咪咕；2.MM；3.联通；4.电信；)
	U8SDK.init(json.decode(initParams))
end
function OnLoginSuc(loginParams)
	-- loginParams:
	-- 	(bool)isSuc --是否登陆成功
	-- 	(bool) isSwitchAccount --是否为切换登陆
	-- 	(string)userID --用户ID
	-- 	(string)sdkUserID --渠道SDK提供的用户ID
	-- 	(string)username --用户名
	-- 	(string)sdkUsername --渠道用户名
	-- 	(string)token --token
end
function OnSwitchLogin(loginParams)
end
function OnLogout()
end
function OnPaySuc(payParams)
	-- payParams:
	-- 	(string)productID --产品ID
	-- 	(string)productName --产品名称
	-- 	(string)extension --扩展信息
	print("---------pay isSuc: ",payParams)
	if CFM.match(CFM.Net4) then
		Channel.payBack4Net(0, json.decode(payParams))
	end
end


module("U8SDK", package.seeall)

local luaj   = device.platform=="android" and require("cocos.cocos2d.luaj")
local name   = "org/cocos2dx/lua/AppActivity"
local m_init = nil

-- 是否支持退出
function isSupportExit()
	return m_init and m_init.isSupportExit
end
-- 是否支持用户中心
function isSupportAccountCenter()
	return m_init and m_init.isSupportAccountCenter
end
-- 是否支持登出
function isSupportLogout()
	return m_init and m_init.isSupportLogout
end
-- 当前运营商是咪咕
function isMigu()
	return m_init and checknumber(m_init.operatorName)==1
end
-- 当前运营商是MM
function isYdmm()
	return m_init and checknumber(m_init.operatorName)==2
end
-- 当前运营商是联通
function isUnicom()
	return m_init and checknumber(m_init.operatorName)==3
end
-- 当前运营商是电信
function isEgame()
	return m_init and checknumber(m_init.operatorName)==4
end

function init(param)
	m_init = param
end

function login()
	luaj.callStaticMethod(name, "login")
end

function switchLogin()
	luaj.callStaticMethod(name, "switchLogin")
end

function logout()
	luaj.callStaticMethod(name, "logout")
end

function exit()
	luaj.callStaticMethod(name, "exit")
end

-- 支付参数说明：
	-- 调用支付时传入值为table，可以传递如下参数：
	-- String productName; //产品名
	-- String productDesc;//产品说明
	-- float price;//价格
	-- int ratio;	//兑换比例，暂时无用
	-- int buyNum;//购买数量
	-- int coinNum;//金币数量
	-- String roleId;//角色ID
	-- String roleName;//角色名称
	-- int roleLevel;//角色等级
	-- String extension;  //扩展信息
function pay(payParms)
	local str = json.encode(payParms)
	luaj.callStaticMethod(name, "pay", {str})
end