local Formatting = {}

function Formatting.formatCurrency(amount)
    local value = math.floor(tonumber(amount) or 0)
    local sign = ""
    if value < 0 then
        sign = "-"
        value = math.abs(value)
    end

    local formatted = tostring(value)
    local changed

    repeat
        formatted, changed = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
    until changed == 0

    return sign .. formatted
end

function Formatting.formatTime(totalSeconds)
    local total = math.max(0, math.floor(totalSeconds))
    local minutes = math.floor(total / 60)
    local seconds = total % 60
    return string.format("%02d:%02d", minutes, seconds)
end

return Formatting