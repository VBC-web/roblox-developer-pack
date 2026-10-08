local function clamp(value, minValue, maxValue)
    return math.max(minValue, math.min(value, maxValue))
end

print(clamp(100, 0, 50))