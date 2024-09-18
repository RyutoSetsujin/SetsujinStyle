--func:DrawText(x, y, text)
--func:DrawNum(x, y, num)
--func:AddGraph("filename")
--func:DrawGraph(x, y, filename)
--func:DrawRectGraph(x, y, rect_x, rect_y, rect_width, rect_height, filename)
--func:DrawGraphCenter(x, y, filename)
--func:DrawGraphRectCenter(x, y, rect_x, rect_y, rect_width, rect_height, filename)
--func:SetOpacity(opacity, "filename")
--func:SetRotation(angle, "fileName")
--func:SetScale(xscale, yscale, "filename")
--func:SetColor(r, g, b, "filename")

local loadingAnimeType = 0

local optkAngle = 0

function clearIn(player)
end

function clearOut(player)
end

function init()
    func:AddGraph("Background.png")

    if loadingAnimeType == 0 then
        func:AddGraph("OpTKIcon.png")
    elseif loadingAnimeType == 1 then
    end
end

function update()
    if loadingAnimeType == 0 then
        optkAngle = optkAngle + (360 * deltaTime)
    elseif loadingAnimeType == 1 then
    end
end

function draw()
    func:DrawGraph(0, 0, "Background.png")
    if loadingAnimeType == 0 then
        func:SetRotation(optkAngle, "OpTKIcon.png")
        func:DrawGraph(1720, 880, "OpTKIcon.png")
        func:DrawText(477, 388, "ModernStyle by Ryuto Setsujin\nMade using SimpleStyle and Open-World Memories as bases.\nPlease support the OpenTaiko team wherever possible.\n\nThis skin is currently a work-in-progress.\nEverything is subject to change at some point.\nPlease keep that in mind as you use this skin in it's current state.\nUpon this skin's public release, all background music and sound effects will be changed\nto use original assets made for this skin.\n\n\n\nIf you paid for this, congratulations, you have been scammed.\n\nRequest a refund wherever you paid for this, and move on with your life.")
    elseif loadingAnimeType == 1 then
    end
end
