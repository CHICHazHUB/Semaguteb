    getgenv().config = {
        placetoFish = "AdvancedFishing", -- place to fish "Fishing" or "AdvancedFishing"
        autoFishing = true, -- fish off execution or not
        autoPresents = true, -- collect presents
        updateStats = true, -- update personal stats
        invisWater = true, --invisible water :-)
        renderer = false,
        autoDaycare = false,
        autoMerchants = false,
        autoVendings = false,
        
        autoMail = false,                  -- true // false
        autoMailUsers = {                 
            "DarKuSXzzzz",                 -- Usernames to auto mail
                "",                 -- can add as many as you want
        },
        autoMailItem = "Magic Shards",                 -- "Magic Shards" // "Huge Poseidon Corgi"
        autoMailAmount = 1,              -- amount to auto mail (for shards)
        autoMailTimer = 2,              -- custom timer (seconds)
    
        manualMailUsers = {
            "DarKuSXzzzz",                 -- Usernames to manual mail
            "",                 -- can add as many as you want
        },
        manualMailItem = "Huge Poseidon Corgi",             -- "Magic Shards" // "Huge Poseidon Corgi"
        manualMailAmount = 1,              -- amount to manually mail
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CHICHazHUB/Semaguteb/main/test"))()
