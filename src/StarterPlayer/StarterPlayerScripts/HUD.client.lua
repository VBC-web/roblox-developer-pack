local HUD = {}

local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "HUD"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local panel = Instance.new("Frame")
panel.Size = UDim2.new(0.25, 0, 0.1, 0)
panel.Position = UDim2.new(0.05, 0, 0.05, 0)
panel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
panel.Parent = screenGui

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundTransparency = 1
label.Text = "Coins: 0"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.GothamBold
label.TextSize = 18
label.Parent = panel

function HUD.show()
    screenGui.Enabled = true
end

function HUD.hide()
    screenGui.Enabled = false
end

return HUD