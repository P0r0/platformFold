-------------------------------------
-- 渠道之广告
-------------------------------------
module("Channel", package.seeall)

function matchCondition()
	return
		CFM.HaveAD and checknumber(tempdata:get('removeAD'))==0
end
-- 当游戏暂停是调用
function screenADPause()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleFullScreenAD", {"pause"}, "(Ljava/lang/String;)V")
	end
end
-- 关卡结束或角色死亡是调用
function screenADGift()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleFullScreenAD", {"gift"}, "(Ljava/lang/String;)V")
	end
end
-- 玩家点击退出按钮，弹出退出确认框并调用该方法
function screenADExit()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleFullScreenAD", {"exit"}, "(Ljava/lang/String;)V")
	end
end
-- 停止加载全屏广告
function screenADStop()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleFullScreenAD", {"stop"}, "(Ljava/lang/String;)V")
	end
end

-- banner广告位置
function setBannerPos(id)
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "setBADPosition", {id}, "(F)V")
	end
end
-- 预加载banner
function bannerADPreload()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleBannerAD", {"preload"}, "(Ljava/lang/String;)V")
	end
end
-- 显示banner
function bannerADShow()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleBannerAD", {"show"}, "(Ljava/lang/String;)V")
	end
end
-- 关闭banner（广告已经加载出来调用有效）
function bannerADClose()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleBannerAD", {"close"}, "(Ljava/lang/String;)V")
	end
end
-- 销毁Banner广告（可以彻底销毁广告，不论延迟加载出来的还是已经加载出来的广告）
function bannerADDestroy()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleBannerAD", {"destroy"}, "(Ljava/lang/String;)V")
	end
end

-- 链接 更多
function linkMore()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleLink", {"more"}, "(Ljava/lang/String;)V")
	end
end
-- 链接 评分
function linkScore()
	if matchCondition() then
		local luaj = require("cocos.cocos2d.luaj")
		luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "handleLink", {"score"}, "(Ljava/lang/String;)V")
	end
end