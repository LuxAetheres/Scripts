local function sell_champ(seller)
    local args = {
    [1] = "SellChamp",
    [2] = seller
    }
    game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer(unpack(args))
end
if not #Children == 0 then
    for i = 1,#Children,1 do
        if not table.find(_G.Keep,Children[i].Container.ChampionName.ContentText) then sell_champ(i) Children[i]:remove() end end end