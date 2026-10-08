local label = Instance.new("TextLabel")
label.Size = UDim2.new(0.3, 0, 0.08, 0)
label.Position = UDim2.new(0.35, 0, 0.1, 0)
label.Text = "Loading..."
label.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local function setText(text)
    label.Text = text
end