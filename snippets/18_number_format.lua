local function formatNumber(value)
    return tostring(value):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
end

print(formatNumber(1234567))