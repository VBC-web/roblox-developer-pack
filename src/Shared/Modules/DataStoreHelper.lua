local DataStoreService = game:GetService("DataStoreService")

local DataStoreHelper = {}

function DataStoreHelper.getData(player, key, defaultValue)
    local store = DataStoreService:GetDataStore("RoBoloxPlayerData")
    local userKey = tostring(player.UserId)
    local success, result = pcall(function()
        return store:GetAsync(userKey .. ":" .. key)
    end)

    if not success then
        warn("DataStore get failed:", result)
        return defaultValue
    end

    if result == nil then
        return defaultValue
    end

    return result
end

function DataStoreHelper.setData(player, key, value)
    local store = DataStoreService:GetDataStore("RoBoloxPlayerData")
    local userKey = tostring(player.UserId)
    local success, result = pcall(function()
        store:SetAsync(userKey .. ":" .. key, value)
    end)

    if not success then
        warn("DataStore set failed:", result)
        return false
    end

    return true
end

return DataStoreHelper