local TweenService = game:GetService("TweenService")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.2, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
frame.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local tween = TweenService:Create(frame, TweenInfo.new(0.5), {
    Position = UDim2.new(0.4, 0, 0.4, 0)
})
tween:Play()