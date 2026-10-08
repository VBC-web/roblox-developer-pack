local Players = game:GetService("Players")

local EconomyService = {}

local state = {}

local function getKey(player)
    return tostring(player.UserId)
end

function EconomyService.getCoins(player)
    local key = getKey(player)
    state[key] = state[key] or 0
    return state[key]
end

function EconomyService.addCoins(player, amount)
    local key = getKey(player)
    state[key] = (state[key] or 0) + amount

    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local coins = leaderstats:FindFirstChild("Coins")
        if coins then
            coins.Value = state[key]
        end
    end

    return state[key]
end

Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Value = 0
    coins.Parent = leaderstats

    state[getKey(player)] = 0
end)

return EconomyService