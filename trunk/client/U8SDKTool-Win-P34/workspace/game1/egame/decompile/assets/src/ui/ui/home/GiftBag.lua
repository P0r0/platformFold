----------------------------------------------------
-- 礼包
----------------------------------------------------
module("ui.home", package.seeall)
GiftBag = UIClass.new("GiftBag")

-- tp:类型(0礼包1赠送)
function GiftBag:ctor(param, tp)
	self.m_typ = tp or 0
	self.m_pid = param
	self.m_cur = nil
	self:init()
end

function GiftBag:setGift(obj, tp, param)
	if not obj then return end
	obj._tp = tp
	obj._id = param
	self:checkState(obj)
end

function GiftBag:initWidget()
	-------------------------------------
	-- 获取控件
	-------------------------------------
	local widget = Language.loadWidget("ccs/package.json")
	local node   = widget:getChildByName("node")
	local first  = node:getChildByName("first")
	local vip    = node:getChildByName("vip")
	local acer   = node:getChildByName("acer")
	local fte    = node:getChildByName("infinite")
	local tomo   = node:getChildByName("tomorrow")
	-------------------------------------
	-- 初始化
	-------------------------------------
	self:setGift(first, 0, Enum.Money1)
	self:setGift(vip, 0, Enum.Money2)
	self:setGift(fte, 0, Enum.Money3)
	self:setGift(acer, 0, Enum.Money7)
	self:setGift(tomo, 1, FreeGiftCfg and FreeGiftCfg.active.tomorrow)
	self:scheduleTime(acer)
	self:scheduleTime(tomo)
	-------------------------------------
	-- 事件
	-------------------------------------
	if not self.m_cur then
		widget._custom_audio_file = Game.Audio.ad_Close
		widget:addTouchEventListener(self:getTouchEventEndClick(false, function(object, eventType)
			self:removeFromParent()
		end))
	else
		local btn_close = self.m_cur:getChildByName("btn_close")
		local btn_buy   = self.m_cur:getChildByName("btn_buy")
		local onButtonEvent = self:getTouchEventEndClick(false, function(object, eventType)
			if object==btn_close then
				self:disappear()
			elseif object==btn_buy then
				if self.m_typ==1 then
					local info = FreeGiftCfg[self.m_pid]
					local showt = roleData.get'regTime'+info.lmt
					if showt>roleData.Time() then
						UIManager.openUI("common.MsgBox", nil, L("SS_TOMORROW_GIFT"))
						return
					end
				end
				local func = self.m_typ==0 and protocol.buyShopReal or protocol.getActiveFreeAward
				func(self.m_pid, function(success)
					if success then
						if GiftBag.getInstance() then
							self:removeFromParent()
						end
					end
				end)
			end
		end)
		btn_close._custom_audio_file = Game.Audio.ad_Close
		btn_close:addTouchEventListener(onButtonEvent)
		btn_buy:addTouchEventListener(onButtonEvent)
	end

	self:addChild(widget)
end

local function initAnItem(item)
	if CFM.match(CFM.HuaWei) then
		Channel.createHwPid(item._id, function(info)
			local price = item:getChildByName("Label_money")
			local des   = item:getChildByName("Label_des")
			price:setString(info.price)
			des:setString(info.desc)
		end)
	end
end

function GiftBag:checkState(obj)
	if not obj then return end
	local bol = self.m_typ==obj._tp and self.m_pid==obj._id
	obj:setVisible(bol)
	if bol then
		self.m_cur = obj
		initAnItem(obj)
	end
end

function GiftBag:scheduleTime(obj)
	if not obj then return end
	if self.m_typ~=obj._tp then
		return
	end
	if self.m_pid~=obj._id then
		return
	end
	if CFM.match(CFM.Audit) then
		return
	end

	local showt = 0
	if obj._tp==0 then
		showt = Game.Convenient.getShopShowTime(self.m_pid)
	elseif obj._tp==1 then
		local info = FreeGiftCfg[obj._id]
		showt      = roleData.get'regTime'+info.lmt
	end

	local label_time = obj:getChildByName("label_time")
	local last       = showt-roleData.Time()
	label_time:setString(SC_TRANSFORM_TIME(last))
	label_time._act = SC_SCHEDULE(label_time, 1, function()
		last = showt-roleData.Time()
		label_time:setString(SC_TRANSFORM_TIME(last))
		if last<=0 then
			if self.m_typ==0 then
				self:removeFromParent()
			elseif self.m_typ==1 then
				if label_time._act then
					label_time:stopAction(label_time._act)
					label_time._act = nil
				end
			end
		end
	end)
end

function GiftBag:onEnter()
	self:appear()
end