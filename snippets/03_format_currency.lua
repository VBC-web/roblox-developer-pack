local function formatCurrency(amount)
    local value = math.floor(tonumber(amount) or 0)
    local formatted = tostring(value)
    local changed

    repeat
        formatted, changed = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
    until changed == 0

    return formatted
end

print(formatCurrency(1234567))