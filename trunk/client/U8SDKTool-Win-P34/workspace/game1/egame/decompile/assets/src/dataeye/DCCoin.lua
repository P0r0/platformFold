DCCoin = {}

DCCoin.normal    = '关卡通关'
DCCoin.raceStage = '种族副本通关'
DCCoin.goldStage = '金币副本通关'
DCCoin.golden    = '点金手'
DCCoin.mine      = '星际矿藏'
DCCoin.sellItem  = '出售道具'
DCCoin.upSkill   = '升级技能'
DCCoin.garrison  = '驻守消耗'
DCCoin.stageBuff = '关卡buff'
DCCoin.upShop    = '刷新商店'
DCCoin.buyAP     = '购买体力'
DCCoin.freeDia   = '免费钻石'
DCCoin.pickCorn  = '无尽接币'
DCCoin.achive    = '成就奖励'
DCCoin.unlockSdr = '解锁兵种'
DCCoin.unlockSkl = '解锁技能'
DCCoin.tomorrow  = '次日礼包'

--[[虚拟币统计接口，设置虚拟币总量
	coinNum:虚拟币总量 long long类型
	coinType:虚拟币各类 String类型
]]
function DCCoin.setCoinNum(coinNum, coinType)
	if CFM.UseDataEye then
		DCLuaCoin:setCoinNum(coinNum, coinType)
	end
end

--[[虚拟币消耗接口
	id:消耗原因 String类型
	lost:消耗数量 long long类型
	left:剩余总量 long long类型
	coinType:虚拟币类型 String类型
]]
function DCCoin.lost(id, coinType, lost, left)
	if CFM.UseDataEye then
		DCLuaCoin:lost(id, coinType, lost, left)
	end
end

--[[虚拟币消耗接口
    id:消耗原因 String类型
    lost:消耗数量 long long类型
    left:剩余总量 long long类型
    coinType:虚拟币类型 String类型
    levelId:当前事件发生时所在的关卡ID
]]
function DCCoin.lostInLevel(id, coinType, lost, left, levelId)
	if CFM.UseDataEye then
	    DCLuaCoin:lostInLevel(id, coinType, lost, left, levelId)
	end
end

--[[虚拟币获得接口
	id:获得原因 String类型
	gain:消耗数量 long long类型
	left:剩余总量 long long类型
	coinType:虚拟币类型 String类型
]]
function DCCoin.gain(id, coinType, gain, left)
	if CFM.UseDataEye then
		DCLuaCoin:gain(id, coinType, gain, left)
	end
end

--[[虚拟币获得接口
    id:获得原因 String类型
    gain:消耗数量 long long类型
    left:剩余总量 long long类型
    coinType:虚拟币类型 String类型
    levelId:当前事件发生时所在的关卡ID
]]
function DCCoin.gainInLevel(id, coinType, gain, left, levelId)
	if CFM.UseDataEye then
	    DCLuaCoin:gainInLevel(id, coinType, gain, left, levelId)
	end
end

return DCCoin