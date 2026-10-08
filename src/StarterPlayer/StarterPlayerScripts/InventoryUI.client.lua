local InventoryUI = {}

local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "InventoryUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local panel = Instance.new("Frame")
panel.Size = UDim2.new(0.3, 0, 0.4, 0)
panel.Position = UDim2.new(0.35, 0, 0.25, 0)
panel.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
panel.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.12, 0)
title.Text = "Inventory"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.Parent = panel

function InventoryUI.show()
    screenGui.Enabled = true
end

function InventoryUI.hide()
    screenGui.Enabled = false
end

return InventoryUI