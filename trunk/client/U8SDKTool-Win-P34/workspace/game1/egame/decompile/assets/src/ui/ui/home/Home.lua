-------------------------------------
-- home
-------------------------------------
module("ui.home", package.seeall)

Home = UIClass.new("Home", 1)

function Home:ctor()
	self:init(true, true)
end

function Home:initWidget()
	-------------------------------------
	-- 获取控件
	-------------------------------------
	local widget = Language.loadWidget("ccs/homeScene.json")
	self._star   = widget:getChildByName("star")
	self._earth  = widget:getChildByName("earth")
	self._scl    = widget:getChildByName("scroll")
	self._base   = self._scl:getChildByName("base")
	self._gift   = widget:getChildByName("gift")

	local checkpoint  = self._base:getChildByName("checkpoint")
	local tech_tree   = self._base:getChildByName("tech_tree")
	local normal_shop = self._base:getChildByName("normal_shop")
	local achivement  = self._base:getChildByName("achivement")
	local ranking     = self._base:getChildByName("ranking")
	local mail        = self._base:getChildByName("mail")
	local endless     = self._star:getChildByName("endless")
	local floor       = self._base:getChildByName("floor_3_0")
	-- tech_tree._tip    = self._base:getChildByName("floor_4"):getChildByName("check_tip")
	-- normal_shop._tip  = self._base:getChildByName("floor_5"):getChildByName("check_tip")
	-------------------------------------
	-- 初始化
	-------------------------------------
	local floor_1 = nil
	if floor then floor_1 = floor:getChildByName("check_tip_0") end
	self._off_x = self._base:getContentSize().width-self._star:getContentSize().width>0 and 300 or display.width-1334 --偏移量
	self._scl:setSwallowTouches(false)
	self._scl._last_x, self._scl._last_y = 0, 0
	local node = cc.Node:create()
	node:scheduleUpdateWithPriorityLua(handler(self, self.checkPosition), 0)
	self:addChild(node)

	local pa = SCParticle.addToObj("particle/frozen.plist", self._star)
	pa:setPositionType(1)

	if floor_1 then
		floor_1.redPos = cc.p(13, floor_1:getContentSize().height-13)
		self:regRed(RedData.EVENT_1, floor_1)
	end
	self:initGift()
	-------------------------------------
	-- 事件
	-------------------------------------
	local touchEvent = self:getTouchEventEndClick(true, function(object, eventType)
		if object==checkpoint then
			UIManager.openUI("home.checkpoint.CheckpointMain", display.getRunningScene():getUILayer())
		elseif object==tech_tree then
			if CFM.NewRecruit then
				UIManager.openUI("home.arsenal.Recruit", display.getRunningScene():getUILayer())
			else
				UIManager.openUI("home.arsenal.Arsenal", display.getRunningScene():getUILayer())
			end
		elseif object==normal_shop then
			if CFM.match(CFM.Yunsu) then return end
			if not CFM.PureSingle then
				Tip.new(L("SS_SYSTEM_IS_LOCK"))
			else
				UIManager.openUI("home.shop.Store", display.getRunningScene():getUILayer())
			end
		elseif object==ranking then
			if CFM.HaveInstitute then
				if Game.FO.isOpen("Institute") then
					UIManager.openUI("home.institute.Institute", display.getRunningScene():getUILayer())
				else
					Tip.new(L("SS_SYSTEM_IS_LOCK_INSTITUTE"))
				end
			else
				UIManager.openUI("home.rank.Rank", display.getRunningScene():getUILayer())
			end
		elseif object==achivement then
			if CFM.PureSingle and CFM.match(CFM.Yunsu) then
				Tip.new(L("SS_SYSTEM_IS_LOCK"))
			else
				UIManager.openUI("home.achievement.Achievement", display.getRunningScene():getUILayer())
			end
		elseif object==endless then
			if CFM.HaveEndless then
				if Game.FO.isOpen("endless") then
					UIManager.openUI("endless.EndlessMain", display.getRunningScene():getUILayer())
				else
					Tip.new(L("SS_SYSTEM_IS_LOCK_ENDLESS"))
				end
			else
				Tip.new(L("SS_SYSTEM_IS_LOCK"))
			end
		elseif object==mail then
			if CFM.NewRecruit then
				if Game.FO.isOpen('MoneyDup') then
					UIManager.openUI("home.MoneyDuplicate.MoneyDup",display.getRunningScene():getUILayer())
				else
					Tip.new(L("SS_SYSTEM_IS_LOCK_MONEYDUP"))
				end
			else
				Tip.new(L("SS_SYSTEM_IS_LOCK"))
			end
		else
			Tip.new(L("SS_SYSTEM_IS_LOCK"))
		end
	end)
	-------------------------------------
	-- 注册事件
	-------------------------------------
	checkpoint :addTouchEventListener(touchEvent)
	tech_tree  :addTouchEventListener(touchEvent)
	normal_shop:addTouchEventListener(touchEvent)
	achivement:addTouchEventListener(touchEvent)
	ranking:addTouchEventListener(touchEvent)
	mail:addTouchEventListener(touchEvent)
	endless:addTouchEventListener(touchEvent)
	

	self:addChild(widget)
end

--对控件的小红点进行add或者remove操作
local function updateRed(obj, bol)
	local little = obj:getChildByName("littleRed")
	if bol and (not little) then
		little = display.newSprite('image/redACMT.png')
		little:setName('littleRed')
		little:setPosition(obj.redPos)
		obj:addChild(little)
	elseif (not bol) and little then
		little:removeFromParent()
	end
end

function Home:regRed(redid, obj)
	if not self.m_reds then self.m_reds={} end
	table.insert(self.m_reds, {id=redid, obj=obj})
	RedManager.reg(redid, obj, updateRed)
end

-- pTotal:优先级总 pX:优先级X方向 pY:优先级Y方向 tp:类型(0礼包1赠送) ox:x偏移(约定比标准多为正) oy:y偏移 event:点击事件 pid:商品id key:礼包里是功能名;赠送里是事件名
local function setGift(dic, obj, pTotal, pX, pY, tp, ox, oy, event, pid, key)
	if not obj then return end
	if pTotal>0 then table.insert(dic.pt, {o=obj, p=pTotal}) end
	if pX>0     then table.insert(dic.px, {o=obj, p=pX})     end
	if pY>0     then table.insert(dic.py, {o=obj, p=pY})     end
	obj._tp   = tp
	obj._pid  = pid
	obj._ox   = ox
	obj._oy   = oy
	obj._key  = key
	obj._born = cc.p(obj:getPositionX(), obj:getPositionY())
	obj:addTouchEventListener(event)
	UIEffect.gift_effect(obj)
end

function Home:initGift()
	if not self._gift then return end

	local first  = self._gift:getChildByName("first")
	local vip    = self._gift:getChildByName("vip")
	local Acer   = self._gift:getChildByName("Acer")
	local fte    = self._gift:getChildByName("infinite")
	local Tomo   = self._gift:getChildByName("tomorrow")
	self.m_first = first
	self.m_vip   = vip
	self.m_acer  = Acer
	self.m_fte   = fte
	self.m_tomo  = Tomo
	self.m_dic   = {pt={},px={},py={}}
	local onGiftEvent = self:getTouchEventEndClick(false, function(object, eventType)
		UIManager.openUI("home.GiftBag", display.getRunningScene(), object._tp==0 and object._pid or object._key, object._tp)
	end)
	setGift(self.m_dic, vip  , 1, 0, 0, 0, 0, 0, onGiftEvent, Enum.Money2, 'giftVip')
	setGift(self.m_dic, first, 2, 1, 0, 0, 0, 0, onGiftEvent, Enum.Money1, 'giftFirst')
	setGift(self.m_dic, Tomo , 3, 2, 0, 1, 0, 35, onGiftEvent, 0, FreeGiftCfg and FreeGiftCfg.active.tomorrow)
	setGift(self.m_dic, fte  , 4, 3, 0, 0, 0, 0, onGiftEvent, Enum.Money3, 'giftinfinite')
	setGift(self.m_dic, Acer , 5, 0, 1, 0, 0, 35, onGiftEvent, Enum.Money7, 'giftHappy')

	table.sort(self.m_dic.pt, function(a, b) return a.p<b.p end)
	table.sort(self.m_dic.px, function(a, b) return a.p<b.p end)
	table.sort(self.m_dic.py, function(a, b) return a.p<b.p end)

	self:updateGift()
end

local function showInTime(obj)
	local showt = roleData.get("shopMoneyLimit."..obj._pid)
	if showt then
		return showt-roleData.Time()>0
	end
	return true	
end
local function reduceGift(obj)
	if not obj then return end
	if obj._tp==0 then
		obj:setVisible(Game.FO.isOpen(obj._key) and (roleData.get('moneyRecord.'..obj._pid) or 0)==0 and showInTime(obj))
	elseif obj._tp==1 then
		obj:setVisible(not FreeGiftCfg.isGot(obj._key))
	end
	obj:setPosition(obj._born)
end

local function scheduleTime(obj, cb)
	if not obj then return end
	local needSche = obj:isVisible()
	local showt = 0
	if needSche and obj._tp==1 then
		local info = FreeGiftCfg[obj._key]
		showt      = roleData.get'regTime'+info.lmt
		needSche   = showt>roleData.Time()
	end

	if needSche then
		if obj._tp==0 then
			showt = Game.Convenient.getShopShowTime(obj._pid)
		end

		local last   = showt-roleData.Time()
		local l_time = obj:getChildByName("label_time")
		l_time:setString(SC_TRANSFORM_TIME(last))
		obj._act     = SC_SCHEDULE(obj, 1, function()
			last = showt-roleData.Time()
			l_time:setString(SC_TRANSFORM_TIME(last))
			if last<=0 then
				if type(cb)=='function' then
					cb()
				end
			end
		end)
	else
		if obj._act then
			obj:stopAction(obj._act)
			obj._act = nil
		end
		if obj._tp==1 then
			obj:getChildByName("label_time"):setVisible(false)
			obj._oy = 0
		end
	end
end

-- mode:0total 1x 2y
local function place(array, mode, first)
	local id = 1
	local ox = 0
	local oy = 0
	for i,v in ipairs(array) do
		if v.o:isVisible() and v.o:getPositionX()==v.o._born.x and v.o:getPositionY()==v.o._born.y then
			if first then
				local front = id==1 and first or array[id-1].o
				if mode==1 then
					ox = ox - front._ox
				elseif mode==2 then
					oy = oy - front._oy
				end
			end
			local pos = array[id].o._born
			v.o:setPosition(pos.x+ox, pos.y+oy)
			id = id + 1
			if mode==0 then
				return v.o
			end
		end
	end
end

function Home:updateGift()
	if not self.m_first then return end

	reduceGift(self.m_vip)
	reduceGift(self.m_first)
	reduceGift(self.m_acer)
	reduceGift(self.m_fte)
	reduceGift(self.m_tomo)

	if not CFM.match(CFM.Audit) then
		scheduleTime(self.m_acer, handler(self, self.updateGift))
		scheduleTime(self.m_tomo, handler(self, self.updateGift))
	end

	local best = place(self.m_dic.pt, 0)
	place(self.m_dic.px, 1, best)
	place(self.m_dic.py, 2, best)
end

function Home:putOnCenter()
	self._scl:jumpToPercentHorizontal(50)
	self:star(0.5)
	self:earth(0.5)
end

function Home:checkPosition()
	local x, y = self._scl:getInnerContainer():getPosition()
	if self._scl._last_x==x and self._scl._last_y==y then
		return
	end
	self._scl._last_x, self._scl._last_y = x, y

	local per = self:getPercent()
	self:star(per)
	self:earth(per)
end

function Home:getPercent()
	local x     = self._scl:getInnerContainer():getPositionX()
	local size  = self._scl:getContentSize()
	local inner = self._scl:getInnerContainerSize()
	return math.abs(x)/(inner.width-size.width)
end

function Home:star(percent)
	-- 锚点为(0, 0.5)
	-- base在最左边时，star看到最左边;
	-- base在最右边时，star看到最右边;
	if (not self._star._total) then
		self._star._total = self._base:getContentSize().width-self._star:getContentSize().width-self._off_x
	end
	self._star:setPositionX(-self._star._total*percent)
end

function Home:earth(percent)
	if not self._earth then return end
	-- 锚点为(0, 0.5)
	-- base在最左边时，earth只能看到一点点;
	-- base在最右边时，earth只能看到一半;
	if (not self._earth._zero) then
		-- self._earth._zero = self._scl:getContentSize().width-display.width/10 --相对屏幕
		self._earth._zero = 1000 --相对star
		self._earth._total = self._earth:getContentSize().width/2-self._off_x
	end
	self._earth:setPositionX(self._earth._zero-self._earth._total*percent)
end

function Home:onEnter()
	self:putOnCenter()
	Channel.bannerADShow()
end

function Home:cleanupUI()
	for _,v in ipairs(self.m_reds or {}) do
	    RedManager.unReg(v.id, v.obj)
	end
end