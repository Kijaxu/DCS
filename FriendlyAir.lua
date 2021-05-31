-- Friendly Air Handler -- v1.0 by VMFA-169 Kijaxu --

local flight = {--FILL THIS TABLE WITH THE GROUP YOU WANT TO SPAWN--}

local group = coalition.addGroup(2, Group.Category.AIRPLANE, flight)

local function update()
	if group:isExist() == true
		then
			return timer.getTime() + 300
		else
			group = coalition.addGroup(2, Group.Category.AIRPLANE, flight)
			return timer.getTime() + 300
	end
end

timer.scheduleFunction(update, nil, timer.getTime() + 10)
