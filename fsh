repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")
local plr = game.Players.LocalPlayer
local Client = require(game.ReplicatedStorage.Library.Client)

getgenv().ticka = tick()
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hiepphamone/lowmap/main/lowmap"))()

function hasunlockzones(name) 
    return Client.ZoneCmds.Owns(name)
end

function getrank()
    return Client.Save.Get().Rank
end
local Rebirth = 0
if Client.RebirthCmds.GetNextRebirth() == nil then
    Rebirth = 3
else
    Rebirth = Client.RebirthCmds.GetNextRebirth()._id
end

print(Rebirth)

if (getrank() < 3 and not hasunlockzones("Rainbow River")) or (Rebirth == 1 and not hasunlockzones("Rainbow River")) then
    -- auto rank
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pipipipipia23/aahsdasd-/main/asdzxc"))()
    -- end auto rank
else
---
getgenv().datas = {
    hasunlock = false
}

function create()
    if not isfile(plr.Name..".datas") then
        writefile(plr.Name..".datas", game:GetService("HttpService"):JSONEncode(getgenv().datas))
    end
end

function LoadSetting()
    if isfile(plr.Name..".datas") then
        v = game:GetService("HttpService"):JSONDecode(readfile(plr.Name..".datas"))
        getgenv().datas = v 
        return getgenv().datas
    else
        create()
    end
end

function saveconfig()
    if isfile(plr.Name..".datas") then
        writefile(plr.Name..".datas", game:GetService("HttpService"):JSONEncode(getgenv().datas))
    else
        if not isfile(plr.Name..".datas") then
            writefile(plr.Name..".datas", game:GetService("HttpService"):JSONEncode(getgenv().datas))
        end
    end
end

create()
LoadSetting()
---

function checkmail()
    local tb = {
        [1] = {
    
        }
    }
    local a = game:GetService("ReplicatedStorage").Network["Mailbox: Get"]:InvokeServer()
    if type(a) == 'table' then
        if a.Inbox then
            for i,v in pairs(a.Inbox) do
                table.insert(tb[1], v.uuid)
            end
        end
    end
    if #tb[1] > 0 then
        return tb
    else
        return false
    end
end

----

---

if hasunlockzones("Rainbow Road") then
    spawn(function()
        while true do wait(1)
            if tick() - getgenv().ticka > 60 * 90 then
                local ts = game:GetService("TeleportService")
                local p = game:GetService("Players").LocalPlayer
                ts:Teleport(8737899170, p)
            end
        end
    end)

    function checkisfish()
        if plr.Character.HumanoidRootPart.Position.Y > 60 and plr.Character.HumanoidRootPart.Position.Y < 70 then
            return true
        end
        return false
    end

    function isheaven()
        if plr.Character.HumanoidRootPart.Position.Y > 130 and plr.Character.HumanoidRootPart.Position.Y < 140 then
            return true
        end
        return false
    end

    function isfish1()
        if plr.Character.HumanoidRootPart.Position.Y > 80 and plr.Character.HumanoidRootPart.Position.Y < 90 then
            return true
        end
        return false
    end

    function getpart()
        for i, v in pairs(game:GetService("Workspace")["__THINGS"].HiddenPresents:GetChildren()) do
            if v.Name == "HiddenPresent" then
                return v
            end
        end
        return false
    end

    function getcoin()
        local a = Client.Save.Get()
        for i,v in pairs(a.Inventory.Currency) do
            if type(v) == "table" and v.id == "Diamonds" then
                return {v._am,i}
            end
        end
        return 0
    end

    function getcoin2()
        local a = Client.Save.Get()
        for i,v in pairs(a.Inventory.Currency) do
            if type(v) == "table" and v.id == "Fishing" then
                return {v._am,i}
            end
        end
        return 0
    end

    function gethuge()
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Pet._byUID) do
            if string.find(string.lower(v._data.id), 'huge') then
                return i
            end
        end
        return false
    end

    function haverod()
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Misc._byUID) do
            if string.find(v._data.id, "Rod") then
                return true
            end
        end
        return false
    end

    function goldenrod()
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Misc._byUID) do
            if v._data.id == "Golden Fishing Rod" or v._data.id == "Diamond Fishing Rod" then
                return i
            end
        end
        return false
    end

    function woodrod()
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Misc._byUID) do
            if v._data.id == "Wooden Fishing Rod" then
                return i
            end
        end
        return false
    end

    function haverodvip()
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Misc._byUID) do
            if string.find(v._data.id, "Amethyst") then
                return true
            end
        end
        return false
    end

    function getshard()
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Misc._byUID) do
            if v._data.id == 'Magic Shard' and v._data._am ~= nil then
                if v._data._am >= getgenv().magicshard then
                    return i 
                end
            end
        end
        return false
    end

    function gettnt()
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Misc._byUID) do
            if v._data.id == 'TNT' and v._data._am ~= nil then
                if v._data._am >= 200 then
                    return i 
                end
            end
        end
        return false
    end

    function getshit()
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Misc._byUID) do
            if v._data.id == 'Rainbow Swirl' and v._data._am ~= nil then
                if v._data._am >= 200 then
                    return i 
                end
            end
        end
        return false
    end

    function autobuyfish()
        if not haverodvip() then
            local args = {
                [1] = "Amethyst Fishing Rod"
            }
            
            game:GetService("ReplicatedStorage").Network.FishingMerchant_PurchaseRod:InvokeServer(unpack(args))
        end
    end

    local cframemap27 = CFrame.new(794.5797729492188, 19.252973556518555, 1135.04345703125)

    -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframemap27
    --if getcoin()[1] >= getgenv().diamonds + 10000 then


    function clickz(text)
        print(text)
        getgenv().clickfish = false
        getconnections(game:GetService("Players").LocalPlayer.PlayerGui["_MISC"].Instancing.BottomButtons.BUTTONS.Home.Activated)[1]:Fire()
    end

    function click(x,y)
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(x, y))
    end

    function autofish()
        if checkmail() ~= false then
            clickz('2')
            wait(5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.03858947753906, 23.593482971191406, -349.0108337402344)
            wait(2)
            game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Claim"):InvokeServer(unpack(checkmail()))
            return
        end
        if woodrod() and getgenv().datas.hasunlock ~= true then
            getgenv().datas.hasunlock = true
            saveconfig()
            return
        end
        if getgenv().datas.hasunlock ~= true and haverod() then
            if isfish1() then
                if workspace.__THINGS.__INSTANCE_CONTAINER.Active.Fishing.Interactable:FindFirstChild("WoodenFishingRod") then
                    wait(3)
                    local args = {
                        [1] = "Fishing",
                        [2] = "ClaimRod"
                    }
        
                    game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(args))
                    wait(2)
                    clickz('1')
                    getgenv().datas.hasunlock = true
                    saveconfig()
                else
                    print('avsdasd')
                    clickz('2')
                    getgenv().datas.hasunlock = true
                    saveconfig()
                end
            else
                print('a')
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframemap27
                wait(4)
                return
            end
        else
            if haverodvip() and goldenrod() and getcoin()[1] > 10000 then
                clickz('3')
                wait(5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.03858947753906, 23.593482971191406, -349.0108337402344)
                wait(2)
                local args = {
                    [1] = getgenv().config.username,
                    [2] = "quanhsendgemne",
                    [3] = "Misc",
                    [4] = goldenrod(),
                    [5] = 1
                }
                game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(args))      
                return
            end
            if gethuge() and getcoin()[1] > 10000 then
                clickz('3')
                wait(5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.03858947753906, 23.593482971191406, -349.0108337402344)
                wait(2)
                local args = {
                    [1] = getgenv().config.username,
                    [2] = "quanhsendgemne",
                    [3] = "Pet",
                    [4] = gethuge(),
                    [5] = 1
                }
                game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(args))      
                return
            end
            if getcoin()[1] >= getgenv().config.diamonds + 10000 then
                clickz('4')
                wait(5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.03858947753906, 23.593482971191406, -349.0108337402344)
                wait(2)
                local args = {
                    [1] = getgenv().config.username,
                    [2] = "quanhsendgemne",
                    [3] = "Currency",
                    [4] = getcoin()[2],
                    [5] = getgenv().config.diamonds
                }
                game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(args))
                return
            end
            if gettnt() and getcoin()[1] > 10000 then
                clickz('5')
                wait(5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.03858947753906, 23.593482971191406, -349.0108337402344)
                wait(2)
                local args = {
                    [1] = getgenv().config.username,
                    [2] = "quanhsendgemne",
                    [3] = "Misc",
                    [4] = gettnt(),
                    [5] = 200
                }
                game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(args))
                return
            end
            if getshit() and getcoin()[1] > 10000 then
                clickz('5')
                wait(5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.03858947753906, 23.593482971191406, -349.0108337402344)
                wait(2)
                local args = {
                    [1] = getgenv().config.username,
                    [2] = "quanhsendgemne",
                    [3] = "Misc",
                    [4] = getshit(),
                    [5] = getgenv().config.magicshard
                }
                game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(args))
                return
            end
            if getshard() and getcoin()[1] > 10000 then
                clickz('5')
                wait(5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.03858947753906, 23.593482971191406, -349.0108337402344)
                wait(2)
                local args = {
                    [1] = getgenv().config.username,
                    [2] = "quanhsendgemne",
                    [3] = "Misc",
                    [4] = getshard(),
                    [5] = getgenv().config.magicshard
                }
                game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(args))
                return
            end
            if getpart() == false and haverod() then
                if isheaven() and not checkisfish() then
                    clickz('6')
                    wait(5)
                    return
                end
                if not checkisfish() then
                    getgenv().clickfish = false
                    plr.Character.HumanoidRootPart.CFrame = CFrame.new(-185.91006469726562, 117.53734588623047, 5170.603515625)
                else
                    if (plr.Character.HumanoidRootPart.Position - CFrame.new(1451.6363525390625, 68.06724548339844, -4453.59912109375).Position).Magnitude > 10 then
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(1451.6363525390625, 68.06724548339844, -4453.59912109375)
                    end
                end
                getgenv().isfish = true
                if game.Players.LocalPlayer.Character:FindFirstChild("Model") then
                    if game.Players.LocalPlayer.Character.Model.Rod:FindFirstChild("FishingLine") and game.Players.LocalPlayer.Character.Model.Rod:FindFirstChild("Sound") then
                        getgenv().clickfish = false
                        local tick1 = tick()
                        repeat wait()
                        until tick() - tick1 > 2.8
                        local args = {
                            [1] = "AdvancedFishing",
                            [2] = "RequestReel"
                        }
                        
                        game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(args))
                    end
                    if game.Players.LocalPlayer.Character.Model.Rod:FindFirstChild("FishingLine") and not game.Players.LocalPlayer.Character.Model.Rod:FindFirstChild("Sound") then
                        getgenv().clickfish = true
                    end
                    if not game.Players.LocalPlayer.Character.Model.Rod:FindFirstChild("FishingLine") and not game.Players.LocalPlayer.Character.Model.Rod:FindFirstChild("Sound") then
                        getgenv().clickfish = false
                        print("here")
                        local args = {
                            [1] = "AdvancedFishing",
                            [2] = "RequestCast",
                            [3] = Vector3.new(1480.2294921875, 61.62503433227539, -4442.16796875)
                        }
                        
                        game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(args))        
                    end
                end
                if checkisfish() and not game.Players.LocalPlayer.Character:FindFirstChild("Model") then
                    wait(5)
                    if checkisfish() and not game.Players.LocalPlayer.Character:FindFirstChild("Model") then
                        clickz('10')
                    end
                end
                if getcoin2()[1] > 2300000 then
                    autobuyfish()
                end
            else
                if checkisfish() then
                    clickz('8')
                    wait(5)
                    return
                end
                if getpart() then
                    getgenv().isfish = false
                    local UTS = game.UserInputService
                    local camera = game.Workspace.CurrentCamera
                    local plr = game.Players.LocalPlayer
                    game.Players.LocalPlayer.CameraMaxZoomDistance = 0
                    game.Players.LocalPlayer.CameraMinZoomDistance = 0
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getpart().CFrame * CFrame.new(0,-1,0)
                    local screenSize = game:GetService("Workspace").CurrentCamera.ViewportSize
                    local centerX, centerY = (screenSize.X / 2) + 30, (screenSize.Y / 2) + 30
                    click(centerX,centerY)
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(centerX, centerY,0,true,a,1)
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(centerX, centerY,0,false,a,1)
                    wait(.2)
                end
            end
        end
    end

    function click2(a)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X-50,a.AbsolutePosition.Y+50,0,true,a,1)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X-50,a.AbsolutePosition.Y+50,0,false,a,1)
    end

    spawn(function()
        while true do task.wait()
            pcall(function()
                if getgenv().clickfish == true then
                    local args = {
                        [1] = "AdvancedFishing",
                        [2] = "Clicked"
                    }
                    
                    game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(args))
                end
            end)
        end
    end)

    spawn(function()
        while true do wait(1)
            pcall(function() 
                if getgenv().isfish ~= true then
                    click2(game:GetService("Players").LocalPlayer.PlayerGui.Message.Frame.Contents.Ok)
                end
            end)
        end
    end)

    while true do wait()
        local a,b = pcall(autofish)
        print(a,b)
    end

else
    function dbuoi()
        for i,v in pairs(game:GetService("Workspace")["__THINGS"].Orbs:GetChildren()) do
            v.CanCollide = false
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
        end
        
        for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetDescendants()) do
            if v:IsA("MeshPart") then
                v.CanCollide = false
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
            end
        end
    end
    
    function attack()
        local a = {}
        for i,v in pairs(game:GetService("Workspace")["__THINGS"].Breakables:GetChildren()) do
            for i1,v1 in pairs(v:GetChildren()) do
                if (v1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 60 and #a < 2 then
                    return v.Name
                end
            end
        end
    end
    
    function destroyvipzone()
        for i,v in pairs(workspace.Map["1 | Spawn"].INTERACT.BREAK_ZONES:GetChildren()) do
            if tostring(v.Position) == "214.12213134765625, 24.417156219482422, -587.1192626953125" then
                print("A")
               v:Destroy() 
            end
        end
    end
    
    function jump()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
        wait(4)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
    end
    
    pcall(destroyvipzone)
    
    game:GetService("RunService").Heartbeat:Connect(function()
        spawn(function()
            game:GetService("ReplicatedStorage").Network.Breakables_PlayerDealDamage:FireServer(attack())
        end)
    end)
    
    function hasunlockzones(name) 
        return Client.ZoneCmds.Owns(name)
    end
    
    function getnextmap()
        return Client.ZoneCmds.GetNextZone()
    end
    
    function getlastmap()
        return Client.ZoneCmds.GetMaxOwnedZone()
    end
    
    function formatclient(name)
        local pattern = " table: .*$"
        local result = name:gsub(pattern, "") 
        return result
    end
    
    function formatmap(text)
        local result = string.match(text, "| (.*)$")
        return result
    end
    
    function getlocation()
        for i,v in pairs(workspace.Map:GetChildren()) do
            if formatmap(v.Name) == formatclient(getlastmap()) and v:FindFirstChild("INTERACT") then
                return v.INTERACT.BREAKABLE_SPAWNS.Main
            end
        end
        return false
    end
    
    function getfoderlastmap()
        local a = nil
        local b = 0
        for i,v in pairs(workspace.Map:GetChildren()) do
            local number = tonumber(string.match(v.Name, "(%d+)"))
            local namemap = formatmap(v.Name)
            if number ~= nil and v:FindFirstChild("INTERACT") then
                if number > b and hasunlockzones(namemap) then
                    b = number
                    a = v.INTERACT.BREAK_ZONES.BREAK_ZONE
                end
            end
        end
        return a
    end
    
    function randompotion(number)
        local Client = require(game.ReplicatedStorage.Library.Client)
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Potion._byUID) do
            return i
        end
        return false
    end
    
    function autoeatpotion()
        if randompotion() ~= false then
            Client.PotionCmds.Consume(randompotion())
        end
    end
    
    function Rebirth() 
        -- local a = Client.RebirthCmds.GetNextRebirth()
        -- if hasunlockzones("Rainbow River") then
        --     return 
        -- end
        -- if tostring(a._id) ~= "3" and a._id < 3 and not hasunlockzones("Rainbow River") then
        --     Client.RebirthCmds.Rebirth(tostring(a._id))
        -- end
    end

    getgenv().numberk = 1

    function collectrank()
        local args = {
            [1] = getgenv().numberk
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
        getgenv().numberk = getgenv().numberk + 1
        if getgenv().numberk >= 30 then
            getgenv().numberk = 1
        end
    end

    function unlockmapattk()
        game:GetService("ReplicatedStorage").Network.Zones_RequestPurchase:InvokeServer(formatclient(getnextmap()))
        pcall(dbuoi)
        game:GetService("ReplicatedStorage").Network.SqueakyToy_Consume:InvokeServer()
        game:GetService("ReplicatedStorage").Network.ChristmasCookie_Consume:InvokeServer()
        game:GetService("ReplicatedStorage").Network.ToyBall_Consume:InvokeServer()
        game:GetService("ReplicatedStorage").Network.ToyBone_Consume:InvokeServer()
    end
    
    function autotnt() 
        game:GetService("ReplicatedStorage").Network.TNT_Consume:InvokeServer()
    end

    function getflag()
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Misc._byUID) do
            if v._data.id == "Coins Flag" then
                return {v._data.id,i}
            end
        end
    end

    function autoflag()
        if hasunlockzones("No Path Forest") then
            Client.ZoneFlagCmds.Consume(getflag()[1],getflag()[2])
        end
    end

    function loop3()
        while true do wait(60)
            pcall(autoflag)
        end
    end

    spawn(loop3)

    function autocreatetnt() 
        if hasunlockzones("Treasure Dungeon") then
            game:GetService("ReplicatedStorage").Network["TNT_Crate_Consume"]:InvokeServer()
        end
    end
    
    function loop1()
        while true do wait(5)
            pcall(unlockmapattk)
            pcall(autoeatpotion)
            pcall(autotnt)
        end
    end

    function loop2()
        while true do wait(5)
            pcall(Rebirth)
        end
    end
    -- game:GetService("ReplicatedStorage").Network["TNT_Crate_Consume"]:InvokeServer()
    
    spawn(loop1)
    spawn(loop2)

    function getrank()
        return Client.Save.Get().Rank
    end

    function enchant(enchantname,rate)
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Enchant._byUID) do
            if v._data.id == enchantname and v._data.tn == rate then
                return i
            end
        end
    end

    local args = {
        [1] = 1
    }
    
    game:GetService("ReplicatedStorage").Network.Enchants_ClearSlot:FireServer(unpack(args))
    wait(3)
    local args = {
        [1] = 2
    }
    
    game:GetService("ReplicatedStorage").Network.Enchants_ClearSlot:FireServer(unpack(args))

    local Client = require(game.ReplicatedStorage.Library.Client)

    function autoequipentchant()
        Client.EnchantCmds.Equip(enchant('Magnet', 3),1)
        wait(2)
        Client.EnchantCmds.Equip(enchant('Coins', 5),1)
    end

    function loop4()
        while true do wait(5)
            pcall(autoequipentchant)
        end
    end

    spawn(loop4)
    
    function unlockmap()
        if checkmail() ~= false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.03858947753906, 23.593482971191406, -349.0108337402344)
            wait(2)
            game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Claim"):InvokeServer(unpack(checkmail()))
            return
        end
        if hasunlockzones("Rainbow Road") then
            local ts = game:GetService("TeleportService")
            local p = game:GetService("Players").LocalPlayer
            ts:Teleport(8737899170, p)
        end
        local a = Client.Save.Get()
        local b = Client.RankCmds.GetMaxPurchasableEquipSlots()
        if a.MaxPetsEquipped < b + 4 and hasunlockzones("Green Forest") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(691.4805297851562, 16.557279586791992, -251.11878967285156)
            for i =1 , b do
                local args = {
                    [1] = i
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("EquipSlotsMachine_RequestPurchase"):InvokeServer(unpack(args))
            end
        else
            if getlocation() ~= false then
                if (plr.Character.HumanoidRootPart.Position - getlocation().Position).Magnitude > 30 then
                    plr.Character.HumanoidRootPart.CFrame = getlocation().CFrame * CFrame.new(0,10,0)
                end
            else
                plr.Character.HumanoidRootPart.CFrame = getfoderlastmap().CFrame * CFrame.new(0,10,0)
            end
        end
    end
    
    function click2(a)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X-50,a.AbsolutePosition.Y+50,0,true,a,1)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X-50,a.AbsolutePosition.Y+50,0,false,a,1)
    end
    
    spawn(function()
        while true do wait(1)
            pcall(function() 
            click2(game:GetService("Players").LocalPlayer.PlayerGui.Message.Frame.Contents.Ok)
            end)
        end
    end)
    
    function getfruit()
        local Client = require(game.ReplicatedStorage.Library.Client)
        for i,v in pairs(Client.InventoryCmds.State().container._store._byType.Fruit._byUID) do
            Client.FruitCmds.Consume(i)
            wait(1)
            click2(game:GetService("Players").LocalPlayer.PlayerGui.Message.Frame.Contents.Ok)
        end
    end
    
    spawn(function()
        while true do wait(10)
            pcall(getfruit)
        end
    end)

    function click2(a)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X-50,a.AbsolutePosition.Y+50,0,true,a,1)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X-50,a.AbsolutePosition.Y+50,0,false,a,1)
    end
    
    function click3(a)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X-100,a.AbsolutePosition.Y+100,0,true,a,1)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X-100,a.AbsolutePosition.Y+100,0,false,a,1)
    end
    
    function detc4()
        click2(game:GetService("Players").LocalPlayer.PlayerGui.Rank.Frame.Side.Balance)
        click3(game:GetService("Players").LocalPlayer.PlayerGui.Rank.Frame.Side.Balance)
    end
    getgenv().numberdaily = 1
    function whatthef()
        local args = {
            [1] = getgenv().numberdaily
        }
        game:GetService("ReplicatedStorage").Network:FindFirstChild("Redeem Free Gift"):InvokeServer(unpack(args))
        getgenv().numberdaily = getgenv().numberdaily + 1
        if getgenv().numberdaily >= 12 then
            getgenv().numberdaily = 1
        end
    end
    

    game:GetService("RunService").Stepped:Connect(function()
        pcall(collectrank)
        pcall(detc4)
        pcall(whatthef)
    end)    
    
    while true do wait()
        local a,b = pcall(unlockmap)
        print(a,b)
    end
    
end

end
