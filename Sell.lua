local args = {
    [1] = "SellChamp",
    [2] = Children[#Children]
}
game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer(unpack(args))
