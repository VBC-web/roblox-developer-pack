local DataStoreService = game:GetService("DataStoreService")
local store = DataStoreService:GetDataStore("PlayerStats")

local function loadData(player)
    local success, result = pcall(function()
        return store:GetAsync(tostring(player.UserId))
    end)

    if success and result then
        return result
    end

    return {}
end