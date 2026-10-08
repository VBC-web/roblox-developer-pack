local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local gui = Instance.new("ScreenGui")
gui.Name = "ExampleUI"
gui.Parent = playerGui

local function open()
    gui.Enabled = true
end

local function close()
    gui.Enabled = false
end