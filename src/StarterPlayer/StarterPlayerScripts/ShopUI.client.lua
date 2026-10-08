local ShopUI = {}

local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ShopUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local panel = Instance.new("Frame")
panel.Size = UDim2.new(0.32, 0, 0.45, 0)
panel.Position = UDim2.new(0.34, 0, 0.2, 0)
panel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
panel.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.14, 0)
title.Text = "Shop"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.Parent = panel

function ShopUI.show()
    screenGui.Enabled = true
end

function ShopUI.hide()
    screenGui.Enabled = false
end

return ShopUI