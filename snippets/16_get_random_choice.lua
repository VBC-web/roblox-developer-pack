local rewards = { "Common", "Rare", "Epic" }

local function getRandomReward()
    return rewards[math.random(1, #rewards)]
end

print(getRandomReward())