-- Opposition Air Scramble -- v1.0 by VMFA-169 Kijaxu --

local flights = {--FILL THIS TABLE WITH GROUPS YOU WANT TO SPAWN--}
local spawnedGroup = {}

local function resetFlag()
    local isActive = false
    if spawnedGroup:isExist()
        then for _, v in pairs(spawnedGroup:getUnits()) do
            if v:inAir() then
                return timer.getTime() + 60
            end
        end
		spawnedGroup:destroy()
    end
    trigger.action.setUserFlag("REPRESENTATIVEFLAGNAME", 0)
end

if trigger.misc.getUserFlag("REPRESENTATIVEFLAGNAME") == 1
	then
		return
	else
	spawnedGroup = coalition.addGroup(47, Group.Category.AIRPLANE, flights[math.random(1, #flights)])
	trigger.action.setUserFlag("REPRESENTATIVEFLAGNAME", 1)
	timer.scheduleFunction(resetFlag, nil, timer.getTime() + 900)
end
