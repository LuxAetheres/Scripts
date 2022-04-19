local RunService = game:GetService("RunService")
local camera = workspace.CurrentCamera
local player = game.Players.LocalPlayer
local CAMERA_OFFSET = Vector3.new(-1,30,0)
camera.CameraType = Enum.CameraType.Scriptable
local function onRenderStep()
    if player.Character then
        local playerPosition = player.Character.HumanoidRootPart.Position
        local cameraPosition = playerPosition + CAMERA_OFFSET
        camera.CoordinateFrame = CFrame.new(cameraPosition, playerPosition)
    end
end
RunService:BindToRenderStep("Camera", Enum.RenderPriority.Camera.Value, onRenderStep)