-------------------------------------
-- 渠道之四网包
-------------------------------------
module("Channel", package.seeall)

function exitAndroid4Net()
	if U8SDK.isSupportExit() then
		U8SDK.exit()
	else
		customOut()
	end
end

function exitBefore4Net()
	if device.platform=="android" then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "exitBefore")
	end
end

function payAndroid4Net(pid)
	local info   = assert(shopMoney[pid])
	local mmid   = mmdic[pid] or pid
	local char   = string.format("%03d", pid)
	local charmm = string.format("%03d", mmid)
	U8SDK.pay({
		productId   = tostring(pid),
		productName = info.name,
		productDesc = "",
		price       = info.m,
		ratio       = 1,
		buyNum      = 1,
		coinNum     = 0,
		roleId      = "01",
		roleName    = "player",
		roleLevel   = 1,
		orderID     = "",
		egameCode   = "TOOL"..pid,
		unicomCode  = char,
		mmCode      = "30000974623"..charmm,
		meegoCode   = char,
		extension   = "",
	})

end

function payBack4Net(sfc, param)
	local bid = kPayFail
	local buy = "支付"
	local des = "失败"
	local nae = param.productName
	if nae and #nae>0 then
		buy = '购买'..nae
	end
	if sfc==kPaySuccess then
		bid = kPaySuccess
		des = "成功"
	elseif sfc==kPayCancel then
		bid = kPayCancel
		des = "取消"
	end

	payListener(string.format("return %d,'%s%s'", bid, buy, des))
end