if not CFM.PureSingle then
	return
end
-------------------------------------
-- 星际商店
-------------------------------------
module("ui.home.shop", package.seeall)
Store = UIClass.new("Store", 1)

function Store:initWidget()
	local widget    = Language.loadWidget("ccs/gift_store.json")
	local node      = widget:getChildByName("node")
	local check_1   = node:getChildByName("check_1")
	local page_view = node:getChildByName("page_view")
	local item_page = page_view:getChildByName("item_page")
	node._born_pos  = cc.p(node:getPositionX(), node:getPositionY())
	self._node      = node
	self._item_page = item_page
	UIClass.setRadioGroup({check_1}, check_1)
	self:loadShopView()
	self:loadItemGoods()
	self:addChild(widget)
end

local function initAnItem(item)
	Channel.createHwPid(item.m_pid, function(info)
		local price = item:getChildByName("floor"):getChildByName("Label_money")
		price:setString(info.price)
	end)
end

function Store:loadShopView()
	local sweep = self._item_page:getChildByName("sweep")
	local ap    = self._item_page:getChildByName("ap")
	local gold  = self._item_page:getChildByName("gold")
	sweep.m_pid = Enum.Money4
	ap   .m_pid = Enum.Money5
	gold .m_pid = Enum.Money6
	if CFM.match(CFM.HuaWei) then
		initAnItem(sweep)
		initAnItem(ap)
		initAnItem(gold)
	end
	local onBuyEvent = self:getTouchEventEndClick(false, function(object, eventType)
		-- UIManager.openUI("home.GiftConfirm", display.getRunningScene(), object.m_pid)
		protocol.buyShopReal(object.m_pid)
	end)

	sweep:addTouchEventListener(onBuyEvent)
	ap   :addTouchEventListener(onBuyEvent)
	gold :addTouchEventListener(onBuyEvent)
end

function Store:loadItemGoods()
	local onShopEvent = self:getTouchEventEndClick(false, function(object, eventType)
		local v        = shopSingle[object.m_id]
		local costData = Game.Convenient.getItemData(v.cost.id)
		local itemData = Game.Convenient.getItemData(v.resource.id)

		UIManager.openUI("common.MsgBox", nil, L("SS_COST_BUY",
			v.cost.cnt, costData.name, v.resource.cnt, itemData.name), function()
				if not roleData.check(v.cost.id, v.cost.cnt) then
					UIManager.openUI("common.MsgBox", nil, L("SS_SOMEONE_NOT_ENOUGH", costData.name))
					return
				end

				protocol.buyShopSingle(object.m_id, function()
					local info = assert(shopSingle[object.m_id])
					local res  = assert(info.resource)
					local dic  = {[res.id]=res.cnt}
					Game.Convenient.tipGotGoods(dic)
				end)
			end, function() end)
	end)

	for i,v in ipairs(shopSingle) do
		local btn_good  = self._item_page:getChildByName("item_"..i)
		local image_box = btn_good:getChildByName("image_box")
		local floor     = btn_good:getChildByName("floor")
		local costData  = Game.Convenient.getItemData(v.cost.id)
		local item_sid  = nil
		if v.resource then
			item_sid = Enum.itemKeyAndSid[v.resource.id]
		end
		IconCreator.create({frame=image_box, sid=item_sid})
		floor:getChildByName("label_cost"):setString(v.cost.cnt)
		floor:getChildByName("icon_cost"):loadTexture(costData.icon, UI_TEX_TYPE_PLIST)

		btn_good.m_id = i
		btn_good:addTouchEventListener(onShopEvent)
	end
end

function Store:animationAppear()
	SC_PRIMARY_UI_ANIMATION_APPEAR(self._node)
end

function Store:animationDisappear()
	SC_PRIMARY_UI_ANIMATION_DISAPPEAR(self._node)
end