local Players = game:GetService("Players")

local EconomyService = require(script.Parent.EconomyService)
local InventoryService = require(script.Parent.InventoryService)
local DataService = require(script.Parent.DataService)

local function onPlayerAdded(player)
    print("[Server] Player joined:", player.Name)

    local data = DataService.loadPlayerData(player)
    print("Loaded profile:", data.Coins)

    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Value = data.Coins or 0
    coins.Parent = leaderstats

    local level = Instance.new("IntValue")
    level.Name = "Level"
    level.Value = data.Level or 1
    level.Parent = leaderstats

    EconomyService.addCoins(player, 0)
    InventoryService.getInventory(player)
end

Players.PlayerAdded:Connect(onPlayerAdded)

for _, player in ipairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end