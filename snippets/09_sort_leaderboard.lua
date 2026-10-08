local leaderboard = {
    { Name = "A", Score = 100 },
    { Name = "B", Score = 200 },
    { Name = "C", Score = 150 },
}

table.sort(leaderboard, function(a, b)
    return a.Score > b.Score
end)