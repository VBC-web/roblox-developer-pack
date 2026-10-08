local HttpService = game:GetService("HttpService")

local function safeDecode(jsonText)
    local success, result = pcall(function()
        return HttpService:JSONDecode(jsonText)
    end)

    if success then
        return result
    end

    return nil
end