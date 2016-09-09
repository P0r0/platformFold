
local MainScene = class("MainScene", cc.load("mvc").ViewBase)
local LSDKUtil = require("cocos.cocos2d.LSDKUtil")

function MainScene:onCreate()
    -- add background image
    display.newSprite("MainSceneBg.jpg")
        :move(display.center)
        :addTo(self)
    local textBoard = ccui.Text:create("Hello","Arial",20)
         textBoard:setPosition(display.cx, display.cy + 300)
    self:addChild(textBoard)
   
    -- add play button
    local playButton = cc.MenuItemImage:create("PlayButton.png", "PlayButton.png")
        :onClicked(function()
         LSDKUtil.login()
        end)
    cc.Menu:create(playButton)
        :move(display.cx, display.cy - 200)
        :addTo(self)
    local btn = ccui.Button:create("PlayButton.png", "ExitButton.png", "ExitButton.png", UI_TEX_TYPE_LOCAL)        
         btn:setPosition(display.cx, display.cy - 300)
    self:addChild(btn) --self在这里表示当前场景

    -- 给按钮添加点击事件
    
    btn:addTouchEventListener(function(object, eventType)
    if eventType == TOUCH_EVENT_ENDED then
         local test = {productId ='123456',productName='元宝',productDesc="something",
         productDesc="something",productDesc="something",productDesc="something",price="1",
         buyNum="2",coinNum="3"}
         --使用json转换table
         LSDKUtil.pay(test)
        end
    end)
end
return MainScene