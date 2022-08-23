local function sell_champ(seller) loadstring(game:HttpGet("https://raw.githubusercontent.com/LuxAetheres/Scripts/Champions/Selling%20Champs.lua"))() end

if not #Children == 0 then
    for i = 1,#Children,1 do
        if not table.find(_G.Keep,Children[i].Container.ChampionName.ContentText) then sell_champ(i) end end end
