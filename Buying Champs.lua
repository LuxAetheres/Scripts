fireclickdetector(game:GetService("Workspace").Shops[pod].ClickBox.ClickDetector)
wait()
for k,v in next,getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.Category.Frames.SpecialObtain.Container.Buy.MouseButton1Click) do
	v.Function()
end