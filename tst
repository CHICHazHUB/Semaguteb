local HWIDTABLE = loadstring(game:HttpGet("https://raw.githubusercontent.com/CHICHazHUB/chichahub01/main/Buyer"))() 
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i,v in pairs(HWIDTABLE) do
    if v == HWID then
        local Remote = game.ReplicatedStorage.Network.Instancing_InvokeCustomFromClient
        local saveModule = require(game:GetService("ReplicatedStorage").Library.Client.Save)
        local result = saveModule.Get()
        local Remote = game.ReplicatedStorage.Network.Instancing_InvokeCustomFromClient
        local Lib = require(game.ReplicatedStorage:WaitForChild("Library").Client)
        local Lib_ = require(game.ReplicatedStorage:WaitForChild("Library"))
        local HttpService = game:GetService("HttpService")
      
    
      if getgenv().config.TPGarden then
          game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(176.87, 23.35, 1993.71)
          task.wait(3)
          game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-450.63, 110.38, -1399.75)
      end
          while getgenv().config.DoAll do task.wait()
              local Remote = game.ReplicatedStorage.Network.Instancing_InvokeCustomFromClient
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 1, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 1)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 1)
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 2, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 2)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 2)
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 3, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 3)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 3)
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 4, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 4)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 4)
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 5, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 5)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 5)
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 6, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 6)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 6)
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 7, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 7)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 7)
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 8, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 8)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 8)
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 9, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 9)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 9)
                      Remote:InvokeServer("FlowerGarden", "PlantSeed", 10, "Diamond")
                      Remote:InvokeServer("FlowerGarden", "WaterSeed", 10)
                      Remote:InvokeServer("FlowerGarden", "ClaimPlant", 10)
                      task.wait(10)
                      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-531.5244140625, 115.44398498535156, -1404.533203125)
                      task.wait(0.3)
                      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(258.929, 16.557, 2061.457)
                      local RepStor = game:GetService("ReplicatedStorage"); local GameLibrary = require(RepStor:WaitForChild("Library")); local Map = game.workspace.Map
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(258.929, 16.557, 2061.457)
                        if Map:FindFirstChild("54 | Flower Field") then
                            local num = 1
                            for i = 1,6 do
                                for i = 1,6 do
                                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Merchant_RequestPurchase"):InvokeServer("GardenMerchant",num)
                            end
                            num = num + 1
                        end
                    end
                    local args = {
                      [1] = "Seed Bag"
                    }
                    
                    game:GetService("ReplicatedStorage").Network.GiftBag_Open:InvokeServer(unpack(args))
                    task.wait(4)
                end
      
      if getgenv().config.AFK then
        AFK()
      end
      
        function AFK()
          local VirtualInputManager = game:GetService("VirtualInputManager")
          while task.wait() do
              VirtualInputManager:SendKeyEvent(true, "Space", false, game)
              task.wait(.2)
              VirtualInputManager:SendKeyEvent(false, "Space", false, game)
              task.wait(300)
      end
    end

      if getgenv().config.autoLoot then
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        local b = workspace.__THINGS
          
        local cf = a.CFrame
        for i,v in pairs(b.Lootbags:GetChildren()) do
        v:PivotTo(cf)
        end
        for i,v in pairs(b.Orbs:GetChildren()) do
        v:PivotTo(cf)
         end
        end
    end
end

