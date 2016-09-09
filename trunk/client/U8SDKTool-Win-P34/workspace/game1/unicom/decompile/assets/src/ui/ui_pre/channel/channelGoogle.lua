-------------------------------------
-- 渠道之谷歌相关
-------------------------------------
module("Channel", package.seeall)

function payAndroidGoogle(pid)
	local luaj = require("cocos.cocos2d.luaj")
	local str  = tostring(pid)
	luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "pay", {str, payListener}, "(Ljava/lang/String;I)V")
end
