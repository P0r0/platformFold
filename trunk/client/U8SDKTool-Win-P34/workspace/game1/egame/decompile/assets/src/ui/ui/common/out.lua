-------------------------------------
-- 退出界面
-------------------------------------
module("ui.common", package.seeall)
Out = UIClass.new("Out")

function Out.close()
    if Out.getInstance() then 
        Out.getInstance():removeFromParent()
    end
end
function Out:ctor(callfun)
    self.m_callfun = callfun
    self:init()
end
function Out:initWidget()
    local widget  = Language.loadWidget("ccs/out.json")
    local bg      = widget:getChildByName("bg")
    local btn_yes = bg:getChildByName("btn_yes")
    local btn_no  = bg:getChildByName("btn_no")


    local onBtnEvent = self:getTouchEventEndClick(false, function(object, eventType)
        if object==btn_yes then
            Channel.exitBefore()
            cc.Director:getInstance():endToLua()            
        elseif object==btn_no then
            self:removeFromParent()
        end
    end)

    btn_yes:addTouchEventListener(onBtnEvent)
    btn_no :addTouchEventListener(onBtnEvent)

    self:setTouchEnabled(true)
    self:addChild(widget)
    display.getRunningScene():addChild(self, 10000)
end

function Out:cleanupUI()
    if self.m_callfun then
        self.m_callfun()
        self.m_callfun = nil
    end
end