-------------------------------------
-- 渠道
-------------------------------------
module("Channel", package.seeall)

m_pay_call = nil --支付回调
m_pay_oder = nil  --订单号
m_default  = '0' --默认充值订单号

function init()
	initHwShop()
end

-- 添加返回键事件
function addKeyBackListener(scene)
	if not scene then return end
	if CFM.NoExit then return end
	local function onRelease(code, event)
		if code == cc.KeyCode.KEY_BACK then
			showExitUI()
		end
	end
	local listener = cc.EventListenerKeyboard:create()
	listener:registerScriptHandler(onRelease, cc.Handler.EVENT_KEYBOARD_RELEASED)
	scene:getEventDispatcher():addEventListenerWithSceneGraphPriority(listener, scene)
end

function showExitUI()
	if device.platform == "android" then
		exitAndroid()
		Channel.screenADExit()
	elseif device.platform == "windows" then
		customOut()
	end
end

function customOut()
	if ui.common.Out.getInstance() then
		ui.common.Out.close()
	else 
		UIManager.openUI("common.Out") 
		Channel.screenADExit()
	end
end

function exitBefore()
	if CFM.match(CFM.Net4) then
		exitBefore4Net()
	end
end

function exitAndroid()
	if CFM.customExit then
		customOut()
		return
	end

	if CFM.match(CFM.Net4) then
		exitAndroid4Net()
		return
	end

	local luaj = require("cocos.cocos2d.luaj")
	luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "exitGame", {}, "()V")
end

-----------------------支付-----------------------
kPaySuccess = 0 --enum value is callback of succeeding in paying.
kPayFail    = 1 --enum value is callback of failing to pay.
kPayCancel  = 2 --enum value is callback of canceling to pay.
mmdic       = {[1]=7, [2]=8, [3]=1, [4]=2, [5]=3, [6]=4, [7]=5, [8]=6} --移动mm计费点编号有些不一致

function payForProduct(pid, cb)
	m_pay_oder = nil
	m_pay_call = cb
	local rid  = pid
	if CFM.match(CFM.YDMM) then
		rid = mmdic[pid] or pid
	end
	if device.platform == "android" then
		if CFM.match(CFM.HuaWei) then
			payAndroidHw(rid)
			m_pay_oder = mserial
		elseif CFM.match(CFM.Letang) then
			payAndroidGoogle(rid)
		elseif CFM.match(CFM.Net4) then
			payAndroid4Net(pid)
		else
			payAndroid(rid)
		end
	end
end

function payListener(str)
	print("----payListener---")
	print("str=", str)
	local code, msg = loadstring(str)()
	print("code=", code)
	print("msg=", msg)
	if type(m_pay_call)=='function' then
		m_pay_call(code~=kPaySuccess and msg or nil)
		m_pay_call = nil
	end
end

function payAndroid(pid)
	local luaj = require("cocos.cocos2d.luaj")
	local str  = string.format("%03d", pid)
	luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "pay", {str, payListener}, "(Ljava/lang/String;I)V")
end

-- 获取漏单
function getMissingArray()
	local arry = nil
	if device.platform == "android" then
		if CFM.match(CFM.HuaWei) then
			arry = getMissingArrHw()
		end
	end
	return arry
end

function getMissPid(str)
	local pid = nil
	if device.platform == "android" then
		if CFM.match(CFM.HuaWei) then
			pid = getMissHwPid(str)
		end
	end
	return pid
end

function completeMissing(str)
	if device.platform == "android" then
		if CFM.match(CFM.HuaWei) then
			completeMissHw(str)
		end
	end
end

function DCPaySuccess(pid)
	if not CFM.UseDataEye then return end

	local orderId = m_pay_oder or m_default
	local iapId   = tostring(pid)
	local amount  = 0
	local currencyType = 'CNY'
	local paymentType  = '短信支付'
	if CFM.match(CFM.HuaWei) then
		if hw_shop then
			local info = hw_shop[pid]
			if info then
				amount = info.amount or 0
				currencyType = info.currency or 'CNY'
			end
		end
	else
		local info = shopMoney[pid]
		if info then
			amount = info.m or 0
		end
	end

	DCVirtualCurrency.paymentSuccess(orderId, iapId, amount, currencyType, paymentType)
end