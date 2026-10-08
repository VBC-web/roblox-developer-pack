local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "RoBoloxHUD"
gui.Parent = player:WaitForChild("PlayerGui")

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0.35, 0, 0.08, 0)
label.Position = UDim2.new(0.325, 0, 0.05, 0)
label.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.GothamBold
label.TextSize = 18
label.Text = "RoBolox Developer Pack Loaded"
label.Parent = gui