----------------------------------------------------
-- 钻石商店
----------------------------------------------------
module("ui.home.shop", package.seeall)
StoreDiamond = UIClass.new("StoreDiamond")

-- 初始加载UI界面
function StoreDiamond:initWidget()
	-------------------------------------
	-- 获取控件
	-------------------------------------
	local widget      = Language.loadWidget("ccs/diamond_store.json")
	local floor       = widget:getChildByName("floor")
	local btn_close   = floor:getChildByName("btn_close")
	local scroll_view = floor:getChildByName("scroll_view")
	local item6       = scroll_view:getChildByName("item6")
	local item12      = scroll_view:getChildByName("item12")
	local item18      = scroll_view:getChildByName("item18")
	local item20      = scroll_view:getChildByName("item20")
	local item25      = scroll_view:getChildByName("item25")
	local item29      = scroll_view:getChildByName("item29")
	-------------------------------------
	-- 初始化
	-------------------------------------
	self._i_6  = item6
	self._i_12 = item12
	self._i_18 = item18
	self._i_20 = item20
	self._i_25 = item25
	self._i_29 = item29
	if item6  then item6 ._Product_Id = Enum.Money8  end
	if item12 then item12._Product_Id = Enum.Money9  end
	if item18 then item18._Product_Id = Enum.Money10 end
	if item20 then item20._Product_Id = Enum.Money11 end
	if item25 then item25._Product_Id = Enum.Money12 end
	if item29 then item29._Product_Id = Enum.Money13 end
	self:initItems()
	self:updateItems()
	-------------------------------------
	-- 事件
	-------------------------------------
	local onButtonEvent = self:getTouchEventEndClick(false, function(object, eventType)
		if object==btn_close then
			self:disappear()
		else
			-- UIManager.openUI("home.shop.StoreDBuy", display.getRunningScene(), object._Product_Id, handler(self, self.updateItems))
			protocol.buyShopReal(object._Product_Id, handler(self, self.updateItems))
		end
	end)

	btn_close._custom_audio_file = Game.Audio.ad_Close
	btn_close:addTouchEventListener(onButtonEvent)
	if item6  then item6 :addTouchEventListener(onButtonEvent) end
	if item12 then item12:addTouchEventListener(onButtonEvent) end
	if item18 then item18:addTouchEventListener(onButtonEvent) end
	if item20 then item20:addTouchEventListener(onButtonEvent) end
	if item25 then item25:addTouchEventListener(onButtonEvent) end
	if item29 then item29:addTouchEventListener(onButtonEvent) end

	self:addChild(widget)
end

local function updateAnItem(item)
	if not item then return end
	local info = assert(shopMoney[item._Product_Id])
	if item:getChildByName("double") then
		item:getChildByName("double"):setVisible(info.double and (roleData.get('moneyRecord.'..item._Product_Id) or 0)==0)
	end
end

function StoreDiamond:updateItems()
	updateAnItem(self._i_6)
	updateAnItem(self._i_12)
	updateAnItem(self._i_18)
	updateAnItem(self._i_20)
	updateAnItem(self._i_25)
	updateAnItem(self._i_29)
end

local function initAnItem(item)
	if not item then return end
	Channel.createHwPid(item._Product_Id, function(info)
		local name  = item:getChildByName("Label_diamonds")
		local price = item:getChildByName("Label_money")
		name:setString(info.title)
		price:setString(info.price)
	end)
end

function StoreDiamond:initItems()
	if CFM.match(CFM.HuaWei) then
		Channel.getHwShop()
		initAnItem(self._i_6)
		initAnItem(self._i_12)
		initAnItem(self._i_18)
		initAnItem(self._i_20)
		initAnItem(self._i_25)
		initAnItem(self._i_29)
	end
end

function StoreDiamond:onEnter()
	self:appear()
end

function StoreDiamond:cleanupUI()
end