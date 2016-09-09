-------------------------------------
-- 渠道之华为
-------------------------------------
module("Channel", package.seeall)

--计费点信息与shopMoney基本一致,商品id以shopMoney为准,name、货币、价格以华为返回的信息为准
isHw    = CFM.match(CFM.HuaWei)
hw_shop = nil
inithw  = nil
mserial = nil
creates = {}

-------------------获取商品信息-------------------
function initHwShop()
	if not isHw then return end
	if hw_shop then return end
	if inithw then return end
	inithw = true

	if device.platform == "android" then
		getSkuDetails()
	elseif device.platform == "windows" then
		hw_shop = {}
		for k,v in pairs(shopMoney) do
			hw_shop[k] = {price="USD "..v.m, currency='USD', amount=v.m, title=v.name, desc=" "}
		end
		SkuEnd()
	end
end

function getHwShop()
	if not hw_shop then
		SkuStart()
		initHwShop()
	end
	return hw_shop
end

function createHwPid(pid, cb)
	if hw_shop then
		cb(hw_shop[pid])
	else
		creates[pid] = cb
	end
end
function callAllCreate()
	if not hw_shop then return end
	for pid,cb in pairs(creates) do
		cb(hw_shop[pid])
	end
	creates = nil
	creates = {}
end

function SkuStart()
	UIManager.openUI("common.Waiting")
end
function SkuEnd()
	inithw = false
	ui.common.Waiting.close()
	callAllCreate()
end

function detailback(str)
	print("-----detailback-----")
	print(str)
	local code, t = loadstring(str)()
	print("code=", code)
	print("t=", t)
	dump(t)
	if code==kPaySuccess then
		hw_shop = t
	end
	SkuEnd()
end
function getSkuDetails()
	local luaj = require("cocos.cocos2d.luaj")
	luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "getSkuDetails", {detailback}, "(I)V")
end

function getMissHwPid(key)
	return AccountManager.getHlpMiss(key)
end

function addOrder(productid)
	if not mserial then return end
	AccountManager.addHlpMiss(mserial, productid)
end

function removeOrder(key)
	AccountManager.removeHlpMiss(key)
end

function payBackHw(str)
	removeOrder(mserial)
	mserial = nil
	payListener(str)
end

function payAndroidHw(pid)
	local luaj = require("cocos.cocos2d.luaj")
	local str  = tostring(pid)
	local ok, orderid = luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "pay", {str, payBackHw}, "(Ljava/lang/String;I)Ljava/lang/String;")
	print("ok, orderid, #orderid", ok, orderid, #orderid)
	if ok and orderid and #orderid>0 then
		-- 保存订单号
		mserial = orderid
		addOrder(pid)
	else
		payListener("return 1, 'PAY FAILURE'")
	end
end

function getMissingArrHw()
	local arry = {}
	local luaj = require("cocos.cocos2d.luaj")
	local ok, str = luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "missingOrder", {}, "()Ljava/lang/String;")
	if ok and str then
		arry = loadstring(str)()
	end
	return arry
end

function completeMissHw(str)
	removeOrder(str)
	local luaj = require("cocos.cocos2d.luaj")
	luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "completeMissing", {str}, "(Ljava/lang/String;)V")
end
