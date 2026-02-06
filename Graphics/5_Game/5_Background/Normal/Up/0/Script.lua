local width = 1920

local x = 0
local y = { 0, 804 }
local clearOpacity = { 0, 0 }

function clearIn(player)
end

function clearOut(player)
end

function init()
    for player = 1, playerCount do
        side = player
        if p1IsBlue then
            side = 2
        end
        func:AddGraph(tostring(side).."P_A.png")
    end
    func:AddGraph("Clear_A.png")
end

function update()
    x = x - (90 * deltaTime)
    if x < -width then 
        x = 0
    end


    for player = 1, playerCount do
        if isClear[player - 1] then 
            clearOpacity[player] = math.min(clearOpacity[player] + (1000 * deltaTime), 255)
        else 
            clearOpacity[player] = math.max(clearOpacity[player] - (1000 * deltaTime), 0)
        end
    end
end

function draw()
    for player = 1, playerCount do
        side = player
        if p1IsBlue then
            side = 2
        end
        
        for i = 0, 5 do
            func:DrawGraph(x + (width * i), y[player], tostring(side).."P_A.png")

            func:SetOpacity(clearOpacity[player], "Clear_A.png")
            func:DrawGraph(x + (width * i), y[player], "Clear_A.png")
        end
    end
end
