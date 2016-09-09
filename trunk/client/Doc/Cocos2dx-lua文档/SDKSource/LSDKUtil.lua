local luaj = require("cocos.cocos2d.luaj")
local json = require("json")

local LSDKUtil = {}

local className = "org/cocos2dx/lua/AppActivity"

function LSDKUtil.login()
	luaj.callStaticMethod(className ,"login",args , signs)
end

function LSDKUtil.switchLogin()
	luaj.callStaticMethod(className ,"switchLogin",args , signs)
end

function LSDKUtil.logout()
	luaj.callStaticMethod(className ,"logout",args , signs)
end

function LSDKUtil.exit()
	luaj.callStaticMethod(className ,"exit",args , signs)
end

function LSDKUtil.pay(payParms)
	local jsonTest = json.encode(payParms)
	local task = {jsonTest}
	luaj.callStaticMethod(className ,"pay",task , signs)
end

return LSDKUtil