-------------------------------------
-- 配置清单
-------------------------------------
module("CFM", package.seeall)

-- 版本特征
Language   = 'cn'
FeatureCfg = {'Single', 'Audit', 'Migu', 'Net4'}
-- 版本特征

-----特征值-----
Single  = 2^0  --用来区分是单机还是网游
MultiL  = 2^1  --多语言版本
NoSDK   = 2^2  --没有sdk
Audit   = 2^3  --审核版(专门用于审核)
Develop = 2^4  --开发版
Migu    = 2^5  --咪咕代理
YDMM    = 2^6  --咪咕代理的移动mm版
Unicom  = 2^7  --咪咕代理的联通版
Yunsu   = 2^8  --云速代理的云速英文下载付费无sdk版(我们的第一版)
HuaWei  = 2^9  --云速代理的华为平台版本
Letang  = 2^10 --乐堂代理
Net4    = 2^11 --咪咕代理的4网包
Lindong = 2^12 --灵动代理的wp8包
-----特征值-----

EigenValue    = 0
PureSingle    = nil --纯单机
IsNet         = nil --是网游
NoTimeLimit   = nil --无次数限制
HaveInstitute = nil --有研究所
HaveEndless   = nil --有无尽玩法
NewSkill      = nil --新版技能(不再可以升级，需花钱解锁)
UseDataEye    = nil --使用游戏分析
NewRecruit    = nil --新招募界面
NoExit        = nil --没有退出功能
customExit    = nil --自定义退出界面
BSNO          = nil --战斗加速需要开启
HaveVip       = nil --有vip概念
HaveAD        = nil --有广告

-----与语言相关的游戏内容清单-----
detailOffL = 0   --兵种详细信息界面之左侧偏移量
detailOffR = 0   --兵种详细信息界面之右侧偏移量
detailAtkS = 0   --兵种详细信息界面之攻速还要偏移的量
effectLvup = nil --兵种等级提升特效 真:单图特效 假:多图特效
golderText = nil --点金手获得界面之获得文字 真:有结尾 假:无结尾


function match(num)
	return
		bit.band(EigenValue, num) > 0
end
function matchAll(t)
	assert(#t>0)
	for _,num in ipairs(t) do
		if bit.band(EigenValue, num)==0 then
			return false
		end
	end
	return true
end
function matchOne(t)
	assert(#t>0)
	for _,num in ipairs(t) do
		if bit.band(EigenValue, num) > 0 then
			return true
		end
	end
	return false
end

function init()
	for _,k in ipairs(FeatureCfg) do
		EigenValue = EigenValue + CFM[k]
	end

	PureSingle    = match(Single)
	IsNet         = not PureSingle
	NoTimeLimit   = PureSingle and (match(Migu) or match(HuaWei) or match(Letang))
	HaveInstitute = PureSingle and (match(Migu) or match(HuaWei) or match(Letang))
	HaveEndless   = PureSingle and (match(Migu) or match(HuaWei) or match(Letang))
	NewSkill      = PureSingle and (match(Migu) or match(HuaWei) or match(Letang))
	HaveVip       = PureSingle and (match(Migu) or match(HuaWei) or match(Letang))
	BSNO          = PureSingle and (match(Migu) or match(HuaWei) or match(Letang))
	UseDataEye    = PureSingle and match(Migu) and device.platform=="android" and (not match(NoSDK))
	NewRecruit    = PureSingle and match(Develop)
	NoExit        = PureSingle and match(Yunsu)
	HaveAD        = PureSingle and match(Letang) and device.platform=="android" and (not match(NoSDK))
	customExit    = (not NoExit) and (match(NoSDK) or match(Unicom) or match(Letang))
end

function initLanguage(flag)
	local iscn = flag=='cn'
	local isen = flag=='en'
	local ises = flag=='es'
	effectLvup = isen or ises
	golderText = iscn
	detailOffL = 100
	detailOffR = 65
	detailAtkS = 0
	if isen then
		detailOffL = detailOffL + 30
		detailOffR = detailOffR + 20
	elseif ises then
		detailOffR = detailOffR + 24
		detailAtkS = detailAtkS + 65
	end
end

init()
