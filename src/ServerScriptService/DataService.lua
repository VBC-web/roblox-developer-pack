local Players = game:GetService("Players")
local DataStoreHelper = require(game.ReplicatedStorage.Shared.Modules.DataStoreHelper)

local DataService = {}

local cache = {}

local function getKey(player)
    return tostring(player.UserId)
end

function DataService.loadPlayerData(player)
    local data = DataStoreHelper.getData(player, "profile", {
        Coins = 0,
        Level = 1,
        Wins = 0,
        Losses = 0
    })

    cache[getKey(player)] = data
    return data
end

function DataService.savePlayerData(player)
    local data = cache[getKey(player)] or {
        Coins = 0,
        Level = 1
    }
    return DataStoreHelper.setData(player, "profile", data)
end

Players.PlayerAdded:Connect(function(player)
    DataService.loadPlayerData(player)
end)

Players.PlayerRemoving:Connect(function(player)
    DataService.savePlayerData(player)
end)

return DataService