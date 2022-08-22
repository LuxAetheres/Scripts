local args = {
    [1] = "SellChamp",
    [2] = seller
}
game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer(unpack(args))