local SettingsUI = {}

local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SettingsUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local panel = Instance.new("Frame")
panel.Size = UDim2.new(0.28, 0, 0.25, 0)
panel.Position = UDim2.new(0.36, 0, 0.35, 0)
panel.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
panel.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.16, 0)
title.Text = "Settings"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.Parent = panel

function SettingsUI.show()
    screenGui.Enabled = true
end

function SettingsUI.hide()
    screenGui.Enabled = false
end

return SettingsUI