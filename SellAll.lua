if not #Children == 0 then
    for i = 1,#Children,1 do
        if not table.find(_G.Keep,Children[i].Container.ChampionName.ContentText) then sell_champ(i) end end end