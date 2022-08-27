local function maxi()
    num_chp = game:GetService("Players").PandArcElectric.PlayerGui.Main.Category.Frames.Champions.Container.Space.Text
    num_chp = num_chp:split("")
    chr = 0
    maxi = ""
    for i = 1,#num_chp,1 do
        if chr == 0 then
            if num_chp[i] == "/" then
                chr = 1
            end
        elseif chr == 1 then
            if num_chp[i] == "]" then
                chr = 2
            else
                maxi = maxi..num_chp[i]
            end
        end
    end
    l = game.Players.localPlayer.PlayerGui.Main.Category.Frames.Champions.Container.List:GetChildren()
    return tonumber(maxi)
end
