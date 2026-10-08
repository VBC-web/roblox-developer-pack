local DataStoreService = game:GetService("DataStoreService")
local store = DataStoreService:GetDataStore("PlayerStats")

local function saveData(player, data)
    local success, result = pcall(function()
        store:SetAsync(tostring(player.UserId), data)
    end)

    if not success then
        warn("Save failed:", result)
    end
end