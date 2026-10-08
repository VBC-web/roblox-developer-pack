local Utils = {}

function Utils.deepCopy(value)
    if type(value) ~= "table" then
        return value
    end

    local copy = {}
    for key, innerValue in pairs(value) do
        copy[key] = Utils.deepCopy(innerValue)
    end
    return copy
end

function Utils.clamp(value, minValue, maxValue)
    return math.max(minValue, math.min(value, maxValue))
end

function Utils.round(value, digits)
    local multiplier = 10 ^ (digits or 0)
    return math.floor(value * multiplier + 0.5) / multiplier
end

function Utils.formatNumber(value)
    local formatted = tostring(value)
    local k

    repeat
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
    until k == 0

    return formatted
end

return Utils