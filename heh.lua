local whitelisted
local wrongplace
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.CharacterAppearanceId ~= game.Players.LocalPlayer.UserId then
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "idk"

local url =
   "https://discord.com/api/webhooks/991666600522563667/2GaHbOJbmUvkoawitVc0M8-jzNqAvcSLiChYCBUYpBgTdu2SsMFYIVYRptG1-v3hnHrJ"
local data = {
   ["embeds"] = {
       {
           ["title"] = "**Some Nigga tried to bypass Notoriety Script**",
	   ["description"] = game.Players.LocalPlayer.DisplayName.." @"..game.Players.LocalPlayer.Name.." ("..game.Players:GetUserIdFromNameAsync(game.Players.LocalPlayer.Name)..") with **"..webhookcheck.."**",
	   ["url"] = "http://www.roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
game.Players.LocalPlayer:Kick("Bruh")
else
if game.Players.LocalPlayer:IsFriendsWith(88544463) or game.Players.LocalPlayer:IsFriendsWith(15559454) or game.Players.LocalPlayer:IsInGroup(8751109) then
whitelisted = "Yes"
else
whitelisted = "No"
end

if string.match(game.GameId, "16680835") then
wrongplace = ""
elseif not string.match(game.GameId, "16680835") then
wrongplace = ", but in the wrong Game/PlaceID. 🤦"
end

local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "idk"

local url =
   "https://discord.com/api/webhooks/991666600522563667/2GaHbOJbmUvkoawitVc0M8-jzNqAvcSLiChYCBUYpBgTdu2SsMFYIVYRptG1-v3hnHrJ"
local data = {
   ["embeds"] = {
       {
           ["title"] = "**Notoriety Script Executed!**",
	   ["description"] = game.Players.LocalPlayer.DisplayName.." @"..game.Players.LocalPlayer.Name.." ("..game.Players:GetUserIdFromNameAsync(game.Players.LocalPlayer.Name)..") with **"..webhookcheck.."** Whitelisted?: **"..whitelisted.."**"..wrongplace.." | Currently In: **"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."**",
	   ["url"] = "http://www.roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
if whitelisted == "No" then
game.Players.LocalPlayer:Kick("Not whitelisted")
end
if not _G.PASSCODE then
game.Players.LocalPlayer:Kick("Passcode Required")
end
if _G.PASSCODE ~= "123" then
game.Players.LocalPlayer:Kick("Incorrect Passcode")
end
if _G.CheatOn == true and _G.PASSCODE == "123" and string.match(game.GameId, "16680835") and not string.match(game.PlaceId, "21532277") and not game.CoreGui.RobloxGui:FindFirstChild("Bragoriety") and whitelisted == "Yes" then
local player = game.Players.LocalPlayer
local u = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TextChatService = game:GetService("TextChatService")
local tweenspeed = 40
local tweenService = game:GetService('TweenService')
local PoliceFolder = Workspace:WaitForChild("Police")
local CameraFolder = Workspace:WaitForChild("Cameras")
local CivilliansFolder = Workspace:WaitForChild("Citizens")
local BodiesFolder = Workspace:WaitForChild("Bodies")
local BagsFolder = Workspace:WaitForChild("Bags")
local RS_Package = game.ReplicatedStorage:WaitForChild("RS_Package")
local BagRemote = RS_Package:FindFirstChild("BagEquipped", true)
local BagSecuredRemote = RS_Package:FindFirstChild("BagSecured", true)
local ThrowBagRemote = RS_Package:FindFirstChild("ThrowBag", true)
local DamageRemote = RS_Package:FindFirstChild("Damage", true)
local BulletRemote = RS_Package:FindFirstChild("Bullet", true)
local HitObjectRemote = RS_Package:FindFirstChild("HitObject", true)
local YellRemote = RS_Package:FindFirstChild("PlayerYell", true)
local StartInteractRemote = RS_Package:FindFirstChild("StartInteraction", true)
local CompleteInteractiontRemote = RS_Package:FindFirstChild("CompleteInteraction", true)
local hascrowbar = false
local haswirecutters = false
local haskeycard = false
local hasUSB = false
local hasdepotkey = false
local hasSnow = false
local cops = false
local civs = false
local infammo = false
local noclip = false
local throwbags = false
local caught = false
local checkingforloot = true
local currentbags = 0
s = Instance.new("ScreenGui", game.CoreGui.RobloxGui)
s.Name = "Bragoriety"
pgr = Instance.new("TextButton")
pgr.Parent = s
pgr.Size = UDim2.new(0.1,0,0.05,0)
pgr.Position = UDim2.new(0.1,0,0.75,0)
pgr.Text="Kill Cops: OFF"
pgr.BackgroundTransparency = 0.3
pgr.TextColor = BrickColor.new("White")
pgr.BackgroundColor = BrickColor.new("Really Black")
pgr.BorderColor = BrickColor.new("Black")
pgr.Font = "ArialBold"
pgr.FontSize = "Size14"
pgr.TextScaled = true
pgr.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr.TextStrokeTransparency = 0.3
pgr.BorderSizePixel = 1
pgr.BorderColor = BrickColor.new("White")
pgr2 = Instance.new("TextButton")
pgr2.Parent = s
pgr2.Size = UDim2.new(0.1,0,0.05,0)
pgr2.Position = UDim2.new(0.1,0,0.7,0)
pgr2.Text="Hostage All Civs: OFF"
pgr2.BackgroundTransparency = 0.3
pgr2.TextColor = BrickColor.new("White")
pgr2.BackgroundColor = BrickColor.new("Really Black")
pgr2.BorderColor = BrickColor.new("Black")
pgr2.Font = "ArialBold"
pgr2.FontSize = "Size14"
pgr2.TextScaled = true
pgr2.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr2.TextStrokeTransparency = 0.3
pgr2.BorderSizePixel = 1
pgr2.BorderColor = BrickColor.new("White")
pgr3 = Instance.new("TextButton")
pgr3.Parent = s
pgr3.Size = UDim2.new(0.1,0,0.05,0)
pgr3.Position = UDim2.new(0.3,0,0.8,0)
pgr3.Text="Set WalkSpeed"
pgr3.BackgroundTransparency = 0.3
pgr3.TextColor = BrickColor.new("White")
pgr3.BackgroundColor = BrickColor.new("Really Black")
pgr3.BorderColor = BrickColor.new("Black")
pgr3.Font = "ArialBold"
pgr3.FontSize = "Size14"
pgr3.TextScaled = true
pgr3.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr3.TextStrokeTransparency = 0.3
pgr3.BorderSizePixel = 1
pgr3.BorderColor = BrickColor.new("White")
pgr4 = Instance.new("TextBox")
pgr4.Parent = s
pgr4.Size = UDim2.new(0.1,0,0.05,0)
pgr4.Position = UDim2.new(0.3,0,0.75,0)
pgr4.Text="30"
pgr4.BackgroundTransparency = 0.3
pgr4.TextColor = BrickColor.new("White")
pgr4.BackgroundColor = BrickColor.new("Really Black")
pgr4.BorderColor = BrickColor.new("Black")
pgr4.Font = "ArialBold"
pgr4.FontSize = "Size14"
pgr4.TextScaled = true
pgr4.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr4.TextStrokeTransparency = 0.3
pgr4.BorderSizePixel = 1
pgr4.BorderColor = BrickColor.new("White")
pgr5 = Instance.new("TextButton")
pgr5.Parent = s
pgr5.Size = UDim2.new(0.1,0,0.05,0)
pgr5.Position = UDim2.new(0.1,0,0.8,0)
pgr5.Text="Shoot All Cameras"
pgr5.BackgroundTransparency = 0.3
pgr5.TextColor = BrickColor.new("White")
pgr5.BackgroundColor = BrickColor.new("Really Black")
pgr5.BorderColor = BrickColor.new("Black")
pgr5.Font = "ArialBold"
pgr5.FontSize = "Size14"
pgr5.TextScaled = true
pgr5.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr5.TextStrokeTransparency = 0.3
pgr5.BorderSizePixel = 1
pgr5.BorderColor = BrickColor.new("White")
pgr6 = Instance.new("TextButton")
pgr6.Parent = s
pgr6.Size = UDim2.new(0.1,0,0.05,0)
pgr6.Position = UDim2.new(0.1,0,0.85,0)
pgr6.Text="ThrowBags to Van: OFF"
pgr6.BackgroundTransparency = 0.3
pgr6.TextColor = BrickColor.new("White")
pgr6.BackgroundColor = BrickColor.new("Really Black")
pgr6.BorderColor = BrickColor.new("Black")
pgr6.Font = "ArialBold"
pgr6.FontSize = "Size14"
pgr6.TextScaled = true
pgr6.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr6.TextStrokeTransparency = 0.3
pgr6.BorderSizePixel = 1
pgr6.BorderColor = BrickColor.new("White")
pgr7 = Instance.new("TextButton")
pgr7.Parent = s
pgr7.Size = UDim2.new(0.1,0,0.05,0)
pgr7.Position = UDim2.new(0.2,0,0.85,0)
pgr7.Text="Kill Tab"
pgr7.BackgroundTransparency = 0.3
pgr7.TextColor = BrickColor.new("White")
pgr7.BackgroundColor = BrickColor.new("Really Black")
pgr7.BorderColor = BrickColor.new("Black")
pgr7.Font = "ArialBold"
pgr7.FontSize = "Size14"
pgr7.TextScaled = true
pgr7.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr7.TextStrokeTransparency = 0.3
pgr7.BorderSizePixel = 1
pgr7.BorderColor = BrickColor.new("White")
pgr8 = Instance.new("TextButton")
pgr8.Parent = s
pgr8.Size = UDim2.new(0.1,0,0.05,0)
pgr8.Position = UDim2.new(0.2,0,0.9,0)
pgr8.Text="Options Tab"
pgr8.BackgroundTransparency = 0.3
pgr8.TextColor = BrickColor.new("White")
pgr8.BackgroundColor = BrickColor.new("Really Black")
pgr8.BorderColor = BrickColor.new("Black")
pgr8.Font = "ArialBold"
pgr8.FontSize = "Size14"
pgr8.TextScaled = true
pgr8.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr8.TextStrokeTransparency = 0.3
pgr8.BorderSizePixel = 1
pgr8.BorderColor = BrickColor.new("White")
pgr9 = Instance.new("TextButton")
pgr9.Parent = s
pgr9.Size = UDim2.new(0.1,0,0.05,0)
pgr9.Position = UDim2.new(0.1,0,0.9,0)
pgr9.Text="TpToVan/Escape"
pgr9.BackgroundTransparency = 0.3
pgr9.TextColor = BrickColor.new("White")
pgr9.BackgroundColor = BrickColor.new("Really Black")
pgr9.BorderColor = BrickColor.new("Black")
pgr9.Font = "ArialBold"
pgr9.FontSize = "Size14"
pgr9.TextScaled = true
pgr9.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr9.TextStrokeTransparency = 0.3
pgr9.BorderSizePixel = 1
pgr9.BorderColor = BrickColor.new("White")
pgr10 = Instance.new("TextButton")
pgr10.Parent = s
pgr10.Size = UDim2.new(0.1,0,0.05,0)
pgr10.Position = UDim2.new(0.2,0,0.8,0)
pgr10.Text="Use Cameras"
pgr10.BackgroundTransparency = 0.3
pgr10.TextColor = BrickColor.new("White")
pgr10.BackgroundColor = BrickColor.new("Really Black")
pgr10.BorderColor = BrickColor.new("Black")
pgr10.Font = "ArialBold"
pgr10.FontSize = "Size14"
pgr10.TextScaled = true
pgr10.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr10.TextStrokeTransparency = 0.3
pgr10.BorderSizePixel = 1
pgr10.BorderColor = BrickColor.new("White")
pgr11 = Instance.new("TextButton")
pgr11.Parent = s
pgr11.Size = UDim2.new(0.1,0,0.05,0)
pgr11.Position = UDim2.new(0.2,0,0.7,0)
pgr11.Text="Noclip: OFF"
pgr11.BackgroundTransparency = 0.3
pgr11.TextColor = BrickColor.new("White")
pgr11.BackgroundColor = BrickColor.new("Really Black")
pgr11.BorderColor = BrickColor.new("Black")
pgr11.Font = "ArialBold"
pgr11.FontSize = "Size14"
pgr11.TextScaled = true
pgr11.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr11.TextStrokeTransparency = 0.3
pgr11.BorderSizePixel = 1
pgr11.BorderColor = BrickColor.new("White")
pgr12 = Instance.new("TextButton")
pgr12.Parent = s
pgr12.Size = UDim2.new(0.1,0,0.05,0)
pgr12.Position = UDim2.new(0.2,0,0.75,0)
pgr12.Text="Inf Ammo: OFF"
pgr12.BackgroundTransparency = 0.3
pgr12.TextColor = BrickColor.new("White")
pgr12.BackgroundColor = BrickColor.new("Really Black")
pgr12.BorderColor = BrickColor.new("Black")
pgr12.Font = "ArialBold"
pgr12.FontSize = "Size14"
pgr12.TextScaled = true
pgr12.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr12.TextStrokeTransparency = 0.3
pgr12.BorderSizePixel = 1
pgr12.BorderColor = BrickColor.new("White")
creditsTo = Instance.new("TextButton")
creditsTo.Parent = s
creditsTo.Size = UDim2.new(0.4,0,0.05,0)
creditsTo.Position = UDim2.new(0.05,0,0.95,0)
creditsTo.Text="Toggle UI: End Key or click heree"
creditsTo.BackgroundTransparency = 1
creditsTo.TextColor = BrickColor.new("White")
creditsTo.BackgroundColor = BrickColor.new("Really Black")
creditsTo.BorderColor = BrickColor.new("Black")
creditsTo.Font = "ArialBold"
creditsTo.FontSize = "Size14"
creditsTo.TextScaled = true
creditsTo.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
creditsTo.TextStrokeTransparency = 0.3
creditsTo.TextXAlignment = "Left"
creditsTo.BorderSizePixel = 1
creditsTo.BorderColor = BrickColor.new("White")
frame = Instance.new("Frame")
frame.Parent = s
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0.3,0,0.5,0)
frame.BackgroundTransparency = 1
frame.Name="Kill"
frame.Visible = false
frame2 = Instance.new("Frame")
frame2.Parent = s
frame2.Size = UDim2.new(1,0,1,0)
frame2.Position = UDim2.new(0.3,0,0.85,0)
frame2.BackgroundTransparency = 1
frame2.Name="Options"
frame2.Visible = false
cfl = Instance.new("TextButton")
cfl.Parent = frame2
cfl.Size = UDim2.new(0.1,0,0.05,0)
cfl.Position = UDim2.new(0,0,0,0)
cfl.Text="Disable CheckForLoot(ReduceLag)"
cfl.BackgroundTransparency = 0.3
cfl.TextColor = BrickColor.new("White")
cfl.BackgroundColor = BrickColor.new("Really Black")
cfl.BorderColor = BrickColor.new("Black")
cfl.Font = "ArialBold"
cfl.FontSize = "Size14"
cfl.TextScaled = true
cfl.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
cfl.TextStrokeTransparency = 0.3
cfl.BorderSizePixel = 1
cfl.BorderColor = BrickColor.new("White")
gtm = Instance.new("TextButton")
gtm.Parent = frame2
gtm.Size = UDim2.new(0.1,0,0.05,0)
gtm.Position = UDim2.new(0,0,0.05,0)
gtm.Text="GoToMenu"
gtm.BackgroundTransparency = 0.3
gtm.TextColor = BrickColor.new("White")
gtm.BackgroundColor = BrickColor.new("Really Black")
gtm.BorderColor = BrickColor.new("Black")
gtm.Font = "ArialBold"
gtm.FontSize = "Size14"
gtm.TextScaled = true
gtm.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
gtm.TextStrokeTransparency = 0.3
gtm.BorderSizePixel = 1
gtm.BorderColor = BrickColor.new("White")
clearloot = Instance.new("TextButton")
clearloot.Parent = frame2
clearloot.Size = UDim2.new(0.1,0,0.05,0)
clearloot.Position = UDim2.new(0.1,0,0,0)
clearloot.Text="ClearLootTable(ReduceLag)"
clearloot.BackgroundTransparency = 0.3
clearloot.TextColor = BrickColor.new("White")
clearloot.BackgroundColor = BrickColor.new("Really Black")
clearloot.BorderColor = BrickColor.new("Black")
clearloot.Font = "ArialBold"
clearloot.FontSize = "Size14"
clearloot.TextScaled = true
clearloot.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
clearloot.TextStrokeTransparency = 0.3
clearloot.BorderSizePixel = 1
clearloot.BorderColor = BrickColor.new("White")
itemprint = Instance.new("TextButton")
itemprint.Parent = frame2
itemprint.Size = UDim2.new(0.1,0,0.05,0)
itemprint.Position = UDim2.new(0.1,0,0.05,0)
itemprint.Text="Print LootTable(See F9)"
itemprint.BackgroundTransparency = 0.3
itemprint.TextColor = BrickColor.new("White")
itemprint.BackgroundColor = BrickColor.new("Really Black")
itemprint.BorderColor = BrickColor.new("Black")
itemprint.Font = "ArialBold"
itemprint.FontSize = "Size14"
itemprint.TextScaled = true
itemprint.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
itemprint.TextStrokeTransparency = 0.3
itemprint.BorderSizePixel = 1
itemprint.BorderColor = BrickColor.new("White")

pgr.MouseButton1Down:connect(function()
if cops == false then
cops = true
pgr.Text = "Kill Cops: ON"
while cops == true do
for _,police in pairs(PoliceFolder:GetChildren())do
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid and Head and player.Character and player.Character:FindFirstChildOfClass("Tool") then
local args = {
	player.Character:FindFirstChildOfClass("Tool"),
	Head,
	false,
	4200,
	Head.Position,
	vector.create(-9e99, 1, -9e99),
	4200,
	"explosion",
	Head.Position
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("HitObject"):FireServer(unpack(args))
else
if Humanoid and Head and player.Backpack:FindFirstChildOfClass("Tool") then
local args2 = {
	"Damage",
	player.Backpack:FindFirstChildOfClass("Tool"),
	Humanoid,
	1000,
	Head,
	player.Backpack:FindFirstChildOfClass("Tool").Name,
	vector.create(-9999999, -1.9310566186904907, -10.946337699890137),
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer(unpack(args2))
end
end
end
task.wait(1)
end
elseif cops == true then
cops = false
pgr.Text = "Kill Cops: OFF"
end
end)

pgr2.MouseButton1Down:connect(function()
if civs == false then
civs = true
pgr2.Text = "Hostage All Civs: ON"
while civs == true do
YellRemote:FireServer(CivilliansFolder:GetChildren())
task.wait()
end
elseif civs == true then
civs = false
pgr2.Text = "Hostage All Civs: OFF"
end
end)

pgr3.MouseButton1Down:connect(function()
if player.Character and player.Character:FindFirstChild("BaseSpeed") and tonumber(pgr4.Text) then
player.Character:FindFirstChild("BaseSpeed").Value = tonumber(pgr4.Text)
end
end)

pgr5.MouseButton1Down:connect(function()
for _,cameras in CameraFolder:GetChildren() do
if cameras:FindFirstChild("Union") then
local args = {
player.Backpack:FindFirstChildOfClass("Tool"),
cameras:FindFirstChild("Union"),
false,
[6] = vector.create(1.0651851892471313, 2.8431220054626465, 4.272229194641113),
[7] = 9e999,
[9] = vector.create(137.39942932128906, 32.951446533203125, -41.06026077270508)
}
HitObjectRemote:FireServer(unpack(args))
end
end
end)

pgr6.MouseButton1Down:connect(function()
if throwbags == false then
throwbags = true
pgr6.Text = "ThrowBags to Van: ON"
while throwbags == true do
for _,c2 in pairs(BagsFolder:GetChildren())do
if c2.Name == "Bag" and c2:FindFirstChild("LastHeldBy") and c2:FindFirstChild("LastHeldBy").Value == player.Character and game.Workspace:FindFirstChild("BagSecuredArea") and not game.Workspace:FindFirstChild("CollectionPoints") and not game.Workspace:FindFirstChild("LootBoat") then
if game.Workspace.Map:FindFirstChild("EventBoxes") and game.Workspace.Map:FindFirstChild("EventBoxes"):FindFirstChild("BagBox") and not game.Workspace.Map:FindFirstChild("EventDoor2") then
for _,boxes in pairs(game.Workspace.Map:FindFirstChild("EventBoxes"):GetChildren())do
if c2 ~= nil and c2:FindFirstChildOfClass("UnionOperation") and boxes:FindFirstChild("Hitbox") then
BagRemote:FireServer(c2,true)
if c2 ~= nil and c2:FindFirstChildOfClass("UnionOperation") and c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld") then
c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld"):Destroy()
ThrowBagRemote:FireServer(Vector3.new(0,0,0))
end
c2:FindFirstChildOfClass("UnionOperation").CFrame = boxes:FindFirstChild("Hitbox").CFrame*CFrame.Angles(math.random(-90,90),math.random(-90,90),math.random(-90,90))
task.wait(0.1)
end
end
else
BagRemote:FireServer(c2,true)
if c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld") then
c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld"):Destroy()
ThrowBagRemote:FireServer(Vector3.new(0,0,0))
end
c2:FindFirstChildOfClass("UnionOperation").CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame
for i = 0,5 do
BagSecuredRemote:FireServer(500000.00000000001,99999,false)
end
end
elseif c2.Name == "Bag" and c2:FindFirstChild("LastHeldBy") and c2:FindFirstChild("LastHeldBy").Value == player.Character and game.Workspace:FindFirstChild("CollectionPoints") then
if game.Workspace:FindFirstChild("CollectionA") then
BagRemote:FireServer(c2,true)
if c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld") then
c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld"):Destroy()
ThrowBagRemote:FireServer(Vector3.new(0,0,0))
end
c2:FindFirstChildOfClass("UnionOperation").CFrame = game.Workspace:FindFirstChild("CollectionA").Pad.CFrame
for i = 0,5 do
BagSecuredRemote:FireServer(500000.00000000001,99999,false)
end
elseif game.Workspace:FindFirstChild("ColectionB") then
BagRemote:FireServer(c2,true)
if c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld") then
c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld"):Destroy()
ThrowBagRemote:FireServer(Vector3.new(0,0,0))
end
c2:FindFirstChildOfClass("UnionOperation").CFrame = game.Workspace:FindFirstChild("ColectionB").Pad.CFrame
for i = 0,5 do
BagSecuredRemote:FireServer(500000.00000000001,99999,false)
end
elseif game.Workspace:FindFirstChild("CollectionC") then
BagRemote:FireServer(c2,true)
if c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld") then
c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld"):Destroy()
ThrowBagRemote:FireServer(Vector3.new(0,0,0))
end
c2:FindFirstChildOfClass("UnionOperation").CFrame = game.Workspace:FindFirstChild("CollectionC").Pad.CFrame
for i = 0,5 do
BagSecuredRemote:FireServer(500000.00000000001,99999,false)
end
end
elseif c2.Name == "Bag" and c2:FindFirstChild("LastHeldBy") and c2:FindFirstChild("LastHeldBy").Value == player.Character and game.Workspace:FindFirstChild("LootBoat") then
if game.Workspace.Map:FindFirstChild("CollectionAreas") then
for coc,collectors in pairs(game.Workspace.Map:FindFirstChild("CollectionAreas"):GetChildren())do
if collectors:FindFirstChild("Collector") and collectors:FindFirstChild("Depot") and collectors:FindFirstChild("Depot"):FindFirstChild("Highlight_[]") then
BagRemote:FireServer(c2,true)
if c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld") then
c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld"):Destroy()
ThrowBagRemote:FireServer(Vector3.new(0,0,0))
end
c2:FindFirstChildOfClass("UnionOperation").CFrame = collectors:FindFirstChild("Collector").CFrame
for i = 0,5 do
BagSecuredRemote:FireServer(500000.00000000001,99999,false)
end
end
end
end
end
end
task.wait(0.1)
end
elseif throwbags == true then
throwbags = false
pgr6.Text = "ThrowBags to Van: OFF"
end
end)

pgr7.MouseButton1Down:connect(function()
if frame.Visible == false then
for _,c in pairs(frame:GetChildren())do
c:Destroy()
end
frame.Visible = true
pgr7.Text = "Close KTab"
local arrange = 0
local side = 0
kags = Instance.new("TextButton")
kags.Parent = frame
kags.Size = UDim2.new(0.1,0,0.05,0)
kags.Position = UDim2.new(0,0,0.2,0)
kags.Text="Kill All Civs"
kags.BackgroundTransparency = 0.3
kags.TextColor = BrickColor.new("White")
kags.BackgroundColor = BrickColor.new("Really Black")
kags.BorderColor = BrickColor.new("Black")
kags.Font = "ArialBold"
kags.FontSize = "Size14"
kags.TextScaled = true
kags.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
kags.TextStrokeTransparency = 0.3
kags.BorderSizePixel = 1
kags.BorderColor = BrickColor.new("White")
kags.MouseButton1Down:connect(function()
for _,civys in pairs(CivilliansFolder:GetChildren())do
local Humanoid = civys:FindFirstChildOfClass("Humanoid")
local Head = civys:FindFirstChild("Head")
if Humanoid and Head and player.Character and player.Character:FindFirstChildOfClass("Tool") then
local args = {
	"Damage",
	player.Character:FindFirstChildOfClass("Tool"),
	Humanoid,
	1000,
	Head,
	player.Character:FindFirstChildOfClass("Tool").Name,
	vector.create(-9e999, -2, -2),
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer(unpack(args))
else
if Humanoid and player.Backpack:FindFirstChildOfClass("Tool") then
local args = {
	"Damage",
	player.Backpack:FindFirstChildOfClass("Tool"),
	Humanoid,
	1000,
	Head,
	player.Backpack:FindFirstChildOfClass("Tool").Name,
	vector.create(-9e999, -2, -2),
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer(unpack(args))
end
end
end
end)
for _,crims in pairs(game.Workspace:WaitForChild("Criminals"):GetChildren())do
kag = Instance.new("TextButton")
kag.Parent = frame
kag.Size = UDim2.new(0.1,0,0.05,0)
kag.Position = UDim2.new(side,0,arrange,0)
if game.Players:GetPlayerFromCharacter(crims) then
kag.Text=game.Players:GetPlayerFromCharacter(crims).DisplayName.." @"..crims.Name
else
kag.Text=crims.Name
end
kag.BackgroundTransparency = 0.3
kag.TextColor = BrickColor.new("White")
kag.BackgroundColor = BrickColor.new("Really Black")
kag.BorderColor = BrickColor.new("Black")
kag.Font = "ArialBold"
kag.FontSize = "Size14"
kag.TextScaled = true
kag.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
kag.TextStrokeTransparency = 0.3
kag.BorderSizePixel = 1
kag.BorderColor = BrickColor.new("White")
if arrange <= 0.1 then
arrange = arrange+0.05
elseif arrange >= 0.15 then
arrange = 0
side = side+0.1
end
kag.MouseButton1Down:connect(function()
local Humanoid = crims:FindFirstChildOfClass("Humanoid")
local Head = crims:FindFirstChild("Head")
if Humanoid and Head and player.Character and player.Character:FindFirstChildOfClass("Tool") then
local args = {
	player.Character:FindFirstChildOfClass("Tool"),
	Head,
	false,
	4200,
	Head.Position,
	vector.create(-9e999, -1.9310566186904907, -10.946337699890137),
	4200,
	"explosion",
	Head.Position
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("HitObject"):FireServer(unpack(args))
local args2 = {
	"Damage",
	player.Character:FindFirstChildOfClass("Tool"),
	Humanoid,
	4200,
	Head,
	player.Character:FindFirstChildOfClass("Tool").Name,
	vector.create(-9e999, -1.9310566186904907, -10.946337699890137),
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer(unpack(args2))
else
if Humanoid and Head and player.Backpack:FindFirstChildOfClass("Tool") then
local args2 = {
	"Damage",
	player.Backpack:FindFirstChildOfClass("Tool"),
	Humanoid,
	1000,
	Head,
	player.Backpack:FindFirstChildOfClass("Tool").Name,
	vector.create(-9e999, -1.9310566186904907, -10.946337699890137),
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer(unpack(args2))
end
end
end)
end
elseif frame.Visible == true then
frame.Visible = false
pgr7.Text = "Kill Tab"
for _,c in pairs(frame:GetChildren())do
c:Destroy()
end
end
end)

pgr8.MouseButton1Down:connect(function()
if frame2.Visible == false then
frame2.Visible = true
pgr8.Text = "Close OTab"
elseif frame2.Visible == true then
frame2.Visible = false
pgr8.Text = "Options Tab"
end
end)

gtm.MouseButton1Down:connect(function()
RS_Package.Remotes.GoToMenu:FireServer()
end)

pgr9.MouseButton1Down:connect(function()
player.Character.HumanoidRootPart.CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame*CFrame.new(0,0,5)
end)

pgr10.MouseButton1Down:connect(function()
if player.PlayerGui.SG_Package.MainGui.Events:FindFirstChild("UseSecurity") and player.PlayerGui.SG_Package.MainGui:FindFirstChild("SecCamScreen") then
player.PlayerGui.SG_Package.MainGui.Events:FindFirstChild("UseSecurity"):Fire(not player.PlayerGui.SG_Package.MainGui:FindFirstChild("SecCamScreen").Visible)
end
end)

pgr11.MouseButton1Down:connect(function()
if noclip == false then
noclip = true
pgr11.Text = "Noclip: ON"
elseif noclip == true then
noclip = false
pgr11.Text = "Noclip: OFF"
end
end)

pgr12.MouseButton1Down:connect(function()
if infammo == false then
infammo = true
pgr12.Text = "Inf Ammo: ON"
while infammo == true do
for _,ammovalues in pairs(player.Character:GetChildren())do
if string.match(ammovalues.Name,"Ammo") then
ammovalues.Value = 999
if ammovalues:GetAttribute("SecondaryAmmo") then
ammovalues:SetAttribute("SecondaryAmmo",999)
end
end
end
task.wait()
end
elseif infammo == true then
infammo = false
pgr12.Text = "Inf Ammo: OFF"
end
end)

creditsTo.MouseButton1Down:connect(function()
if pgr.Visible == true then
for _,c in pairs(s:GetChildren())do
if c:IsA("TextButton") then
c.Visible = false
elseif c:IsA("TextBox") then
c.Visible = false
elseif c:IsA("Frame") then
c.Visible = false
end
end
creditsTo.Visible = true
elseif pgr.Visible == false then
for _,c in pairs(s:GetChildren())do
if c:IsA("TextButton") then
c.Visible = true
elseif c:IsA("TextBox") then
c.Visible = true
end
end
end
end)

u.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.End then
if s.Enabled == true then
s.Enabled = false
elseif s.Enabled == false then
s.Enabled = true
end
end
end)

game:GetService("UserInputService").JumpRequest:connect(function()
player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end)

player.Character:FindFirstChildOfClass("Humanoid").StateChanged:Connect(function(_oldState, newState)
if newState == Enum.HumanoidStateType.Freefall then
task.wait(0.1)
player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Landed")
end
end)

game:GetService("RunService").Stepped:connect(function()
if noclip == true then
for _,c in pairs(player.Character:GetChildren())do
if c:IsA("BasePart") and not string.match(c.Name,"Right") and not string.match(c.Name,"Left") and not string.match(c.Name,"HumanoidRootPart") then
c.CanCollide = false
end
end
elseif noclip == false then
for _,c in pairs(player.Character:GetChildren())do
if c:IsA("BasePart") and not string.match(c.Name,"Right") and not string.match(c.Name,"Left") and not string.match(c.Name,"HumanoidRootPart") then
c.CanCollide = true
end
end
end
end)

local lastnotif = "Nothing"

local function notify(objname)
if lastnotif ~= objname then
if objname == "RandomCrate" or objname == "RushCrate" or objname == "colorBoxDoor" or objname == "MilitaryCrateUNTIMED" or objname == "MiniSafe" or objname == "DisplayCaseRemoveGlass" or objname == "rfid_faceplate" or objname == "ObjectivePickDoor1" or objname == "ObjectivePickDoor2" or objname == "Cash Register" or objname == "Cash Drawer" or objname == "TransportBoatDoor" or objname == "Folder" or objname == "FUSEBOXDOOR" or objname == "LockedStorageDoor" or objname == "ArtPowerBox" then
local prefix = "[Auto Open]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."Opening up "..objname.."...")
lastnotif = objname
elseif objname == "MilitaryCrateTIMED" then
local prefix = "[Auto Defuse]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."Defusing "..objname.."...")
lastnotif = objname
elseif objname == "KickDoor" then
local prefix = "[Auto DoorKick]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."FBI OPEN UP!")
lastnotif = objname
elseif objname == "prop_stadium_storageKeypad" or objname == "CodeKeypad" or objname == "colorBoxRNG" or objname == "UseUSBComputer" or objname == "StadiumHackLaptop" or objname == "HackableComputer" then
local prefix = "[Auto Hack]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."Hacking "..objname.."...")
lastnotif = objname
elseif objname == "stadiumDramaticButton" or objname == "AssemblePulleyRope" or objname == "AssemblePulleyHook" or objname == "PulleyLever" or objname == "RotatePressureWheel" or objname == "CamDisabler" or objname == "TransportBoatSignal" or objname == "Shelf" or objname == "FaxMachine" or objname == "GasEnter" or objname == "gassy" or objname == "TimelockScanner" or objname == "GMCKeycodeInput" or objname == "PowerBoxPower" or objname == "doorBell" or objname == "InsertSnow" or objname == "disabledFuseBox" or objname == "disabledSnowMachine" or objname == "SecureCrate" then
local prefix = "[Auto Interact]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."Interacting with "..objname.."...")
lastnotif = objname
elseif objname == "CardReader" or objname == "KeycardKeypad" then
local prefix = "[Auto CardReader]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."Inserting KeyCard...")
lastnotif = objname
elseif objname == "SoccerBall" then
local prefix = "[Auto Soccer]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."GOOOAAALL!!")
lastnotif = objname
elseif objname == "Food" then
local prefix = "[Auto Eat]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."NOM NOM NOM!")
lastnotif = objname
elseif objname == "PickpocketKeycard" then
local prefix = "[Auto Pickpocket]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."Yoinkzerzzz")
lastnotif = objname
else
local prefix = "[Auto Loot]: "
TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(prefix.."Picking up "..objname.."...")
lastnotif = objname
end
end
end

local WorkspaceDescendants = workspace:GetDescendants()
local Added, Removed;
local Enabled;
local objectstable = {}
local knownloots = {
"DepositMoneyStack",
"DepositMoneyStack_LOCKED",
"Coke",
"PaintingTemplate",
"LootablePainting",
"LootableMasterpiece",
"LockedPainting",
"Jewels",
"Blueprint",
"ALMOSTCoke",
"WitchesBrew",
"doorBell",
"WaitingDoorbell",
"CandyBucket",
"Snow",
"XunopenedFuseBox",
"xFUSEBOXDOOR",
"unopenedFuseBox",
"FUSEBOXDOOR",
"disabledFuseBox",
"InsertSnow",
"disabledSnowMachine",
"RotatePressureWheel",
"Gift",
"RushCrate",
"MilitaryCrate",
"MilitaryCrateTIMED",
"MilitaryCrateUNTIMED",
"OpenMilitaryCrate",
"BoomedBox",
"WeaponBagger",
"GoldBars",
"GoldBars_LOCKED",
"Samurai",
"Artifact",
"MiniSafe",
"CamDisabler",
"Thermal Drill Bag",
"DowntownEasterActivator",
"DowntownEgg",
"LockedStorageDoor",
"xSecureCrate1",
"xSecureCrate2",
"SecureCrate1",
"SecureCrate2",
"SecureCrate",
"xTransportBoatSignal",
"TransportBoatSignal",
"TransportBoatDoor",
"ArtPowerBox",
"pulledSignal",
"OpenedSafe",
"OpenedRegister",
"SpecialItem",
"SpecialItemRoStore",
"SpecialItemShoeStore",
"BlackFridayToy|",
"BlackFridayVase|",
"BlackFridayShirt|",
"CellPhoneLoot",
"ATMmoney",
"RandomCrate",
"OpenCrate",
"Crowbar",
"Wirecutters",
"Money",
"Cash Register",
"Cash Drawer",
"DepositMoney",
"DepositGoldBar",
"SilverBar",
"DepositRing",
"RingBox",
"JewelCrown",
"TrophyLoot",
"TrophyLoot_",
"DisplayCaseRemoveGlass",
"ArtObject",
"SoccerBall",
"RemoveLid",
"PowerBoxPower",
"disabled",
"SmallJewels",
"SmallJewels2",
"RushHourPackage",
"RushHourPackage1",
"RushHourPackage2",
"HackableComputer",
"HackingComputer",
"HackedComputer",
"USBDrive",
"RushHourUSB",
"PokerChips",
"Shelf",
"Searched",
"ImportantNote",
"FaxMachineOff",
"FaxMachine",
"GasEnter",
"gassy",
"GMCKeycodeInput",
"GMCKeycodeInputX",
"Folder",
"DisabledHack",
"Scanner1",
"TimelockScanner",
"BrickBankVaultDoor",
"Lanyard",
"KeyCard",
"PickpocketKeycard",
"Key",
"KeyAccessory",
"CardReader",
"LootDrill",
"Food",
"KickDoor",
"StageRope",
"StageHook",
"missionItem_hook",
"missionItem_rope",
"missionItem_laptopHack",
"USB",
"USB_disabled",
"rfid_faceplate",
"colorBoxRNG",
"prop_stadium_storageKeypad",
"KeycardKeypad",
"prop_stadium_USBComputer1",
"prop_stadium_USBComputer2",
"USBComputer",
"UseUSBComputer",
"CodeKeypad",
"stadiumDramaticButton",
"ObjectivePickDoor1",
"ObjectivePickDoor2",
"ObjectiveDoor",
"StadiumHackLaptop",
"AssemblePulleyRope",
"AssemblePulleyRope_",
"AssemblePulleyHook",
"GoldGuitar_Invisible",
"GoldGuitar",
"PulleyLever_",
"PulleyLever"}

local function DescendantAdded(object)
if object:IsA("Model") and object:IsDescendantOf(PoliceFolder) == false and object.Parent ~= PoliceFolder then
for Index,loottable in pairs(knownloots)do
if object.Name == loottable and object.Parent ~= nil then
table.insert(objectstable, object)
end
end
end
end

local function Disable()
if Enabled then
Enabled = nil
Added:Disconnect()
Added = nil
end
end

local function Enable()
if Enabled then
Disable()
end
Enabled = true
Added = workspace.DescendantAdded:Connect(DescendantAdded)
end

for _,putintotabledamnit in pairs(game.Workspace:GetChildren())do
if putintotabledamnit:IsA("Model") or putintotabledamnit:IsA("Accessory") or putintotabledamnit:IsA("Hat") then
for Index,loottable in pairs(knownloots)do
if putintotabledamnit.Name == loottable and putintotabledamnit:FindFirstChildOfClass("Part") or putintotabledamnit.Name == loottable and putintotabledamnit:FindFirstChildOfClass("Model") or putintotabledamnit.Name == loottable and putintotabledamnit:FindFirstChildOfClass("MeshPart") or putintotabledamnit.Name == loottable and putintotabledamnit:FindFirstChildOfClass("UnionOperation") then
table.insert(objectstable,putintotabledamnit)
end
end
elseif putintotabledamnit:IsA("TouchTransmitter") then
putintotabledamnit:Destroy()
end
for _,kidz in pairs(putintotabledamnit:GetChildren())do
if kidz.Name ~= "ExcessParts" then
if kidz:IsA("Model") or kidz:IsA("Accessory") or kidz:IsA("Hat") then
for Index,loottable in pairs(knownloots)do
if kidz.Name == loottable and kidz:FindFirstChildOfClass("Part") or kidz.Name == loottable and kidz:FindFirstChildOfClass("Model") or kidz.Name == loottable and kidz:FindFirstChildOfClass("MeshPart") or kidz.Name == loottable and kidz:FindFirstChildOfClass("UnionOperation") then
table.insert(objectstable,kidz)
end
end
elseif kidz:IsA("TouchTransmitter") then
kidz:Destroy()
end
for _,kidz2 in pairs(kidz:GetChildren())do
if kidz2:IsA("Model") or kidz2:IsA("Accessory") or kidz2:IsA("Hat") then
for Index,loottable in pairs(knownloots)do
if kidz2.Name == loottable and kidz2:FindFirstChildOfClass("Part") or kidz2.Name == loottable and kidz2:FindFirstChildOfClass("Model") or kidz2.Name == loottable and kidz2:FindFirstChildOfClass("MeshPart") or kidz2.Name == loottable and kidz2:FindFirstChildOfClass("UnionOperation") then
table.insert(objectstable,kidz2)
end
end
elseif kidz2:IsA("TouchTransmitter") then
kidz2:Destroy()
end
for _,kidz3 in pairs(kidz2:GetChildren())do
if kidz3:IsA("Model") or kidz3:IsA("Accessory") or kidz3:IsA("Hat") then
for Index,loottable in pairs(knownloots)do
if kidz3.Name == loottable and kidz3:FindFirstChildOfClass("Part") or kidz3.Name == loottable and kidz3:FindFirstChildOfClass("Model") or kidz3.Name == loottable and kidz3:FindFirstChildOfClass("MeshPart") or kidz3.Name == loottable and kidz3:FindFirstChildOfClass("UnionOperation") then
table.insert(objectstable,kidz3)
end
end
elseif kidz3:IsA("TouchTransmitter") then
kidz3:Destroy()
end
for _,kidz4 in pairs(kidz3:GetChildren())do
if kidz4:IsA("Model") or kidz4:IsA("Accessory") or kidz4:IsA("Hat") then
for Index,loottable in pairs(knownloots)do
if kidz4.Name == loottable and kidz4:FindFirstChildOfClass("Part") or kidz4.Name == loottable and kidz4:FindFirstChildOfClass("Model") or kidz4.Name == loottable and kidz4:FindFirstChildOfClass("MeshPart") or kidz4.Name == loottable and kidz4:FindFirstChildOfClass("UnionOperation") then
table.insert(objectstable,kidz4)
end
end
elseif kidz4:IsA("TouchTransmitter") then
kidz4:Destroy()
end
for _,kidz5 in pairs(kidz4:GetChildren())do
if kidz5:IsA("Model") or kidz5:IsA("Accessory") or kidz5:IsA("Hat") then
for Index,loottable in pairs(knownloots)do
if kidz5.Name == loottable and kidz5:FindFirstChildOfClass("Part") or kidz5.Name == loottable and kidz5:FindFirstChildOfClass("Model") or kidz5.Name == loottable and kidz5:FindFirstChildOfClass("MeshPart") or kidz5.Name == loottable and kidz5:FindFirstChildOfClass("UnionOperation") then
table.insert(objectstable,kidz5)
end
end
elseif kidz5:IsA("TouchTransmitter") then
kidz5:Destroy()
end
for _,kidz6 in pairs(kidz5:GetChildren())do
if kidz6:IsA("Model") or kidz6:IsA("Accessory") or kidz6:IsA("Hat") then
for Index,loottable in pairs(knownloots)do
if kidz6.Name == loottable and kidz6:FindFirstChildOfClass("Part") or kidz6.Name == loottable and kidz6:FindFirstChildOfClass("Model") or kidz6.Name == loottable and kidz6:FindFirstChildOfClass("MeshPart") or kidz6.Name == loottable and kidz6:FindFirstChildOfClass("UnionOperation") then
table.insert(objectstable,kidz6)
end
end
elseif kidz6:IsA("TouchTransmitter") then
kidz6:Destroy()
end
end
end
end
end
end
end
end
end

print("CURRENT NUMBER OF ITEMS: "..#objectstable)
print("--ITEM LIST--")
for _,itemlist in pairs(objectstable)do
print(itemlist.Name)
end
print("--END OF LIST--")

if checkingforloot == true then
Enable()
end

cfl.MouseButton1Down:connect(function()
if checkingforloot == false then
Enable()
checkingforloot = true
cfl.Text = "Disable CheckForLoot(ReduceLag)"
elseif checkingforloot == true then
Disable()
checkingforloot = false
cfl.Text = "Enable CheckForLoot"
end
end)

clearloot.MouseButton1Down:connect(function()
table.clear(objectstable)
end)

itemprint.MouseButton1Down:connect(function()
print("CURRENT NUMBER OF ITEMS: "..#objectstable)
print("--ITEM LIST--")
for _,itemlist in pairs(objectstable)do
print(itemlist.Name)
end
print("--END OF LIST--")
end)

if _G.OzelaFarm == true and string.match(game.PlaceId, "6537140247") then

spawn(function()

local istrophiesclear = false
local PlayerGuiSG_Package = player.PlayerGui:WaitForChild("SG_Package")
local SG_PackageMainGui = PlayerGuiSG_Package:WaitForChild("MainGui")
local trophytable = {}

repeat task.wait() until SG_PackageMainGui:FindFirstChild("PregameFrame") and SG_PackageMainGui.PregameFrame.Visible == true or game.Workspace.Criminals:FindFirstChildOfClass("Model")

if SG_PackageMainGui.PregameFrame.Visible == true then
game:GetService("ReplicatedStorage").RS_Package.Remotes.PlayerReady:FireServer("Class 1",true)
end

repeat task.wait() until game.Workspace.Criminals:FindFirstChildOfClass("Model")

wait(2)

for _,lol in pairs(game.Workspace.Criminals:GetChildren())do
if string.match(lol.Name, "AI") then
lol.NAMETAG.TextLabel.Text = "Random spinjutsu ass weeeeeeeee"
end
end

repeat
for _,police in pairs(CivilliansFolder:GetChildren())do
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid and player.Backpack:FindFirstChildOfClass("Tool") then
local args = {
	"Damage",
	player.Backpack:FindFirstChildOfClass("Tool"),
	Humanoid,
	10000,
	Head,
	player.Backpack:FindFirstChildOfClass("Tool").Name,
	vector.create(9e999, -9e999, -9e999),
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer(unpack(args))
end
wait(.05)
end

for _,police in pairs(PoliceFolder:GetChildren())do
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid and player.Backpack:FindFirstChildOfClass("Tool") then
local args = {
	"Damage",
	player.Backpack:FindFirstChildOfClass("Tool"),
	Humanoid,
	10000,
	Head,
	player.Backpack:FindFirstChildOfClass("Tool").Name,
	vector.create(9e999, -9e999, -9e999),
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer(unpack(args))
end
wait(.05)
end
task.wait() 
until not PoliceFolder:FindFirstChildOfClass("Model") and not CivilliansFolder:FindFirstChildOfClass("Model") 

for _,cameras in CameraFolder:GetChildren() do
if cameras:FindFirstChild("Union") then
local args = {
player.Backpack:FindFirstChildOfClass("Tool"),
cameras:FindFirstChild("Union"),
false,
[6] = vector.create(1.0651851892471313, 2.8431220054626465, 4.272229194641113),
[7] = 9e999,
[9] = vector.create(137.39942932128906, 32.951446533203125, -41.06026077270508)
}
HitObjectRemote:FireServer(unpack(args))
end
end

for _,giggity in pairs(game.Workspace:GetDescendants())do
if giggity.Name == "TrophyLoot_" and giggity:IsDescendantOf(game.Workspace.Map.ExcessParts) == false or giggity.Name == "TrophyLoot" and giggity:IsDescendantOf(game.Workspace.Map.ExcessParts) == false then
table.insert(trophytable,giggity)
end
end

wait(2)

local p=Instance.new("Part",workspace)
p.Name="FlameEm"
p.TopSurface=0
p.BottomSurface=0
p.BrickColor=BrickColor.random()
p.Anchored=true
p.CanCollide=true
p.Size=Vector3.new(50,3,50)
p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0)

while task.wait() do

if SG_PackageMainGui.frame_heistResults.Visible == true then
game:GetService("ReplicatedStorage").RS_Package.Remotes.VoteReset:FireServer()
elseif player.Character and player.Character.Health.Value <= 0 then
game:GetService("ReplicatedStorage").RS_Package.Remotes.VoteReset:FireServer()
end

if game.Workspace.Criminals:FindFirstChildOfClass("Model") and player.Character:FindFirstChild("Mask") then
VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.G, false, game)
end

noclip = true

for _,police in pairs(PoliceFolder:GetChildren())do
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid and player.Backpack:FindFirstChildOfClass("Tool") then
local args = {
	"Damage",
	player.Backpack:FindFirstChildOfClass("Tool"),
	Humanoid,
	10000,
	Head,
	player.Backpack:FindFirstChildOfClass("Tool").Name,
	vector.create(9e999, -9e999, -9e999),
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer(unpack(args))
end
end

for _,police in pairs(CivilliansFolder:GetChildren())do
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid and player.Backpack:FindFirstChildOfClass("Tool") then
local args = {
	"Damage",
	player.Backpack:FindFirstChildOfClass("Tool"),
	Humanoid,
	10000,
	Head,
	player.Backpack:FindFirstChildOfClass("Tool").Name,
	vector.create(9e999, -9e999, -9e999),
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer(unpack(args))
end
end

game.Workspace.Gravity = 10

if #trophytable >= 1 and not game.Workspace.Pulley:FindFirstChild("GoldGuitar") and not game.Workspace.Pulley:FindFirstChild("GoldGuitar_Invisible") and game.Workspace:FindFirstChild("Built") then
for pussy,penises in pairs(trophytable) do
if penises.Name == "TrophyLoot" and penises:FindFirstChild("loot") or penises.Name == "TrophyLoot_" and penises:FindFirstChild("loot") then
local tweenInfo = TweenInfo.new((penises:FindFirstChild("loot").CFrame.Position+Vector3.new(0,-2.5,0) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = penises:FindFirstChild("loot").CFrame*CFrame.new(0,-2.5,0)}):Play()
repeat p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0)  task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or penises == nil or not penises:FindFirstChild("loot") or (penises:FindFirstChild("loot").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(2)
elseif penises == nil or penises.Parent == nil then
table.remove(trophytable,pussy)
end
end
end

if not game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game.Workspace.Map:FindFirstChild("USB") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate") then
local tweenInfo = TweenInfo.new((game.Workspace.Map:FindFirstChild("USB").Hitbox.Position+Vector3.new(0,-5,0) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.Map:FindFirstChild("USB").Hitbox.CFrame*CFrame.new(0,-5,0)}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.Map:FindFirstChild("USB") or (game.Workspace.Map:FindFirstChild("USB").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game.Workspace.Map:FindFirstChild("KeyCard") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("OpenDoor") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace.Map:FindFirstChild("KeyCard").InteractionPart.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.Map:FindFirstChild("KeyCard").InteractionPart.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.Map:FindFirstChild("KeyCard") or (game.Workspace.Map:FindFirstChild("KeyCard").InteractionPart.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate") and not game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate").Backplate.Position+Vector3.new(0,-5,0) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate").Backplate.CFrame*CFrame.new(0,-5,0)}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate") or (game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate").Backplate.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked").KickDoor.MainPart2.Position+Vector3.new(0,-5,0) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked").KickDoor.MainPart2.CFrame*CFrame.new(0,-5,0)}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked") or (game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked"):FindFirstChild("KickDoor").MainPart2.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("Key Card") and game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game.Workspace:FindFirstChild("GuardLocker2") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("OpenDoor") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") and game.Workspace:FindFirstChild("prop_stadium_USBComputer1") and game.Workspace:FindFirstChild("prop_stadium_USBComputer1"):FindFirstChild("Keyboard") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("prop_stadium_USBComputer1"):FindFirstChild("Keyboard").Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("prop_stadium_USBComputer1").Keyboard.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") or game.Workspace:FindFirstChild("UseUSBComputer") or game.Workspace:FindFirstChild("UsedUSBComputer")
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("Key Card") and game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game.Workspace:FindFirstChild("GuardLocker1") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("OpenDoor") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") and game.Workspace:FindFirstChild("prop_stadium_USBComputer2") and game.Workspace:FindFirstChild("prop_stadium_USBComputer2"):FindFirstChild("Keyboard") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("prop_stadium_USBComputer2"):FindFirstChild("Keyboard").Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("prop_stadium_USBComputer2").Keyboard.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") or game.Workspace:FindFirstChild("UseUSBComputer") or game.Workspace:FindFirstChild("UsedUSBComputer")
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("Key Card") and game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game.Workspace:FindFirstChild("UseUSBComputer") and game.Workspace:FindFirstChild("UseUSBComputer"):FindFirstChild("Keyboard") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("OpenDoor") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("UseUSBComputer"):FindFirstChild("Keyboard").Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("UseUSBComputer").Keyboard.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") or not game.Workspace:FindFirstChild("UseUSBComputer") or game.Workspace:FindFirstChild("UseUSBComputer").Screen.SurfaceGui.TextLabel.Text ~= "Locked" or game.Workspace:FindFirstChild("UsedUSBComputer") or (game.Workspace:FindFirstChild("UseUSBComputer").Keyboard.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif not game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("Key Card") and game.Workspace:FindFirstChild("UsedUSBComputer") and game.Workspace:FindFirstChild("prop_stadium_storageKeypad") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("OpenDoor") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("prop_stadium_storageKeypad").Hitbox.Position+Vector3.new(0,0,5) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("prop_stadium_storageKeypad").Hitbox.CFrame*CFrame.new(0,0,5)}):Play()
repeat task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("prop_stadium_storageKeypad") or (game.Workspace:FindFirstChild("prop_stadium_storageKeypad").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif not game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("Key Card") and game.Workspace:FindFirstChild("UsedUSBComputer") and game.Workspace:FindFirstChild("KeycardKeypad") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("OpenDoor") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("KeycardKeypad").Hitbox.Position+Vector3.new(0,0,5) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("KeycardKeypad").Hitbox.CFrame*CFrame.new(0,0,5)}):Play()
repeat task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("KeycardKeypad") or (game.Workspace:FindFirstChild("KeycardKeypad").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace:FindFirstChild("prop_stadium_caseOpener").stadiumDramaticButton.Used.Value == false and game.Workspace:FindFirstChild("_") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("prop_stadium_caseOpener").stadiumDramaticButton.Main.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("prop_stadium_caseOpener").stadiumDramaticButton.Main.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("prop_stadium_caseOpener") or (game.Workspace:FindFirstChild("prop_stadium_caseOpener").stadiumDramaticButton.Main.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook") then
local tweenInfo = TweenInfo.new((game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook"):FindFirstChild("missionItem_hook").Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook"):FindFirstChild("missionItem_hook").CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) 
if player.Character.HumanoidRootPart.Position.Y < -50 then
player.Character.HumanoidRootPart.CFrame = game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook"):FindFirstChild("missionItem_hook").CFrame
end
task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook") or (game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook"):FindFirstChild("missionItem_hook").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope") then
local tweenInfo = TweenInfo.new((game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope"):FindFirstChild("missionItem_rope").Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope"):FindFirstChild("missionItem_rope").CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) 
if player.Character.HumanoidRootPart.Position.Y < -50 then
player.Character.HumanoidRootPart.CFrame = game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope"):FindFirstChild("missionItem_rope").CFrame
end
task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope") or (game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope"):FindFirstChild("missionItem_rope").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace:FindFirstChild("ObjectivePickDoor1") and game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door") and game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door"):FindFirstChild("Highlight_[]") or game.Workspace:FindFirstChild("ObjectivePickDoor1") and game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door") and game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("Rope") and game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("Hook") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door").DoorOpenPart.Position+Vector3.new(0,0,-5) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door").DoorOpenPart.CFrame*CFrame.new(0,0,-5)}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door") or (game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door").DoorOpenPart.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack") and game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack"):FindFirstChild("Highlight_[]") or game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack") and game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("OpenDoor") then
local tweenInfo = TweenInfo.new((game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack").Keyboard.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack").Keyboard.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack") or (game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack").Keyboard.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") and game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop").Keyboard.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop").Keyboard.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") or (game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop").Keyboard.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("StadiumHackLaptop")
local Time = tick() + 3.25
repeat
if game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") and game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop").Keyboard:FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until nil or not game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Keyboard").Position).magnitude > 10
if game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") and game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
elseif game.Workspace:FindFirstChild("AssemblePulleyRope") and game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("AssemblePulleyRope").Hitbox.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("AssemblePulleyRope").Hitbox.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("AssemblePulleyRope") or (game.Workspace:FindFirstChild("AssemblePulleyRope").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("AssemblePulleyRope")
local Time = tick() + 1.5
repeat
if game.Workspace:FindFirstChild("AssemblePulleyRope") and game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until nil or not game.Workspace:FindFirstChild("AssemblePulleyRope") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox").Position).magnitude > 10
if game.Workspace:FindFirstChild("AssemblePulleyRope") and game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
elseif game.Workspace:FindFirstChild("AssemblePulleyHook") and game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("AssemblePulleyHook").Hitbox.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("AssemblePulleyHook").Hitbox.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("AssemblePulleyHook") or (game.Workspace:FindFirstChild("AssemblePulleyHook").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("AssemblePulleyHook")
local Time = tick() + 1.5
repeat
if game.Workspace:FindFirstChild("AssemblePulleyHook") and game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until nil or not game.Workspace:FindFirstChild("AssemblePulleyHook") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox").Position).magnitude > 10
if game.Workspace:FindFirstChild("AssemblePulleyHook") and game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
elseif game.Workspace:FindFirstChild("PulleyLever") and game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("PulleyLever").Hitbox.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("PulleyLever").Hitbox.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("PulleyLever") or (game.Workspace:FindFirstChild("PulleyLever").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("PulleyLever")
local Time = tick() + 1
repeat
if game.Workspace:FindFirstChild("PulleyLever") and game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until nil or not game.Workspace:FindFirstChild("PulleyLever") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox").Position).magnitude > 10
if game.Workspace:FindFirstChild("PulleyLever") and game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
elseif game.Workspace:FindFirstChild("Pulley") and game.Workspace:FindFirstChild("Pulley"):FindFirstChild("GoldGuitar") then
local tweenInfo = TweenInfo.new((game.Workspace.Pulley.GoldGuitar.missionItem_goldGuitar.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.Pulley.GoldGuitar.missionItem_goldGuitar.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.Pulley:FindFirstChild("GoldGuitar") or (game.Workspace.Pulley.GoldGuitar.missionItem_goldGuitar.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("GoldGuitar")
repeat
if game.Workspace.Pulley:FindFirstChild("GoldGuitar") and game.Workspace.Pulley:FindFirstChild("GoldGuitar"):FindFirstChild("missionItem_goldGuitar") then
player.Character.HumanoidRootPart.CFrame = game.Workspace.Pulley.hook["Meshes/piratehook"].CFrame*CFrame.new(0,2,-2)
fireproximityprompt(game.Workspace.Pulley:FindFirstChild("GoldGuitar"):FindFirstChild("missionItem_goldGuitar").ProximityPrompt,5,true)
end
task.wait()
until not game.Workspace.Pulley:FindFirstChild("GoldGuitar")
wait(1)
elseif #trophytable == 0 and not game.Workspace.Pulley:FindFirstChild("GoldGuitar") and not game.Workspace.Pulley:FindFirstChild("GoldGuitar_Invisible") and game.Workspace:FindFirstChild("Built") and game.Workspace:FindFirstChild("prop_stadium_USBComputer2") and not player.Character:FindFirstChild("HAS COSTUME") then
local tweenInfo = TweenInfo.new((Vector3.new(281,60,280) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(281,60,280)}):Play()
p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0)
if player.Character.HumanoidRootPart.Position.Y < 0 then
player.Character.HumanoidRootPart.CFrame = CFrame.new(281,60,280)
end
elseif #trophytable == 0 and not game.Workspace.Pulley:FindFirstChild("GoldGuitar") and not game.Workspace.Pulley:FindFirstChild("GoldGuitar_Invisible") and game.Workspace:FindFirstChild("Built") and game.Workspace:FindFirstChild("prop_stadium_USBComputer1") and not player.Character:FindFirstChild("HAS COSTUME") then
local tweenInfo = TweenInfo.new((Vector3.new(69,39,-176) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(69,39,-176)}):Play()
p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0)
if player.Character.HumanoidRootPart.Position.Y < 0 then
player.Character.HumanoidRootPart.CFrame = CFrame.new(69,39,-176)
end
elseif not player.Character:FindFirstChild("HAS COSTUME") and not game.Workspace:FindFirstChild("Built") then
local tweenInfo = TweenInfo.new((game.Workspace.BagSecuredArea.FloorPart.Position+Vector3.new(0,0,5) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame*CFrame.new(0,0,5)}):Play()
p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0)
if player.Character.HumanoidRootPart.Position.Y < 0 then
player.Character.HumanoidRootPart.CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame*CFrame.new(0,0,5)
end
elseif player.Character:FindFirstChild("HAS COSTUME") then
player.Character.HumanoidRootPart.CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
end
end
end)
end

while task.wait(0.1) do
if player.Character and player.Character:FindFirstChild("Stamina") then
player.Character:FindFirstChild("Stamina").Value = 1000
end

if player.Character and player.Character:FindFirstChild("BagSpeed") then
player.Character:FindFirstChild("BagSpeed").Value = 1
end

if player.Character and player.Character:FindFirstChild("Crit") then
player.Character:FindFirstChild("Crit").Value = 100
end

if player.Character and player.Character:FindFirstChild("Dodge") then
player.Character:FindFirstChild("Dodge").Value = 100
end

if player.Character and player.Character:FindFirstChild("BodyBags") then
player.Character:FindFirstChild("BodyBags").Value = 100
end

if player.Character and player.Character:FindFirstChild("Messiah") then
player.Character:FindFirstChild("Messiah").Value = 1
end

if game.Workspace.CurrentCamera:FindFirstChild("BulletHandler") then
game.Workspace.CurrentCamera:FindFirstChild("BulletHandler"):Destroy()
end

RS_Package.Host.Value = player.UserId
RS_Package.Kicking.Value = 2

for _,BLIND in pairs(game.Workspace.CurrentCamera:GetChildren())do
if string.match(BLIND.Name,"ColorCorrection") and BLIND:IsA("ColorCorrectionEffect") or BLIND:IsA("BlurEffect") then
BLIND.Enabled = false
end
end

currentbags = 0

for equip,ment in pairs(game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:GetChildren())do
if ment.Name == "Crowbar" and ment.Value == player then
hascrowbar = true
end
if ment.Name == "Wirecutters" and ment.Value == player then
haswirecutters = true
end
if ment.Name == "Key Card" and ment.Value == player then
haskeycard = true
end
if ment.Name == "USB" and ment.Value == player then
hasUSB = true
end
if ment.Name == "Snow" and ment.Value == player then
hasSnow = true
end
if ment.Name == "Key" and ment.Value == player then
hasdepotkey = true
end
if ment.Name == "Loot Bag" and ment.Value == player then
currentbags = currentbags+1
end
end

if game.Workspace:FindFirstChild("Tracers") then
for _,die in pairs(game.Workspace:FindFirstChild("Tracers"):GetChildren())do
die:Destroy()
end
end

for _,labelbags in pairs(BagsFolder:GetChildren())do
if labelbags.Name ~= "DeadBody" and labelbags.Name ~= "KEEPER" and labelbags.Name ~= "Highlight" then
if not labelbags:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",labelbags)
bb.Adornee = labelbags
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = labelbags.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif labelbags.Name == "Bag" and labelbags:FindFirstChild("tracker") and labelbags:FindFirstChild("LastHeldBy") and labelbags:FindFirstChild("LastHeldBy").Value == player.Character then
labelbags:FindFirstChild("tracker").TextLabel.Text = "✅ Bag"
elseif labelbags.Name == "Bag" and labelbags:FindFirstChild("tracker") and labelbags:FindFirstChild("LastHeldBy") and labelbags:FindFirstChild("LastHeldBy").Value ~= player.Character then
labelbags:FindFirstChild("tracker").TextLabel.Text = "Bag"
end
if not labelbags:FindFirstChild("Highlight2") then
local highlight = Instance.new("Highlight",labelbags)
highlight.Name = "Highlight2"
highlight.FillTransparency = 0.75
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
end
end

if game.Workspace:FindFirstChild("BagSecuredArea") then
for _,labelbags2 in pairs(game.Workspace.BagSecuredArea:GetChildren())do
if labelbags2:FindFirstChild("tracker") then
labelbags2:FindFirstChild("tracker"):Destroy()
end
if labelbags2:FindFirstChild("Highlight2") then
labelbags2:FindFirstChild("Highlight2"):Destroy()
end
end
end

for _,boss in pairs(CivilliansFolder:GetChildren())do
if boss:FindFirstChild("Type") and boss:FindFirstChild("Type").Value == "Owner" then
if not boss:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",boss)
bb.Adornee = boss
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = boss:FindFirstChild("Type").Value
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if not boss:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",boss)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
end
end

for _,bump in pairs(PoliceFolder:GetChildren())do
if bump:FindFirstChild("HumanoidRootPart") and bump:FindFirstChild("HumanoidRootPart"):FindFirstChildOfClass("TouchTransmitter") then
bump:FindFirstChild("HumanoidRootPart"):FindFirstChildOfClass("TouchTransmitter"):Destroy()
end
end

for op, c in pairs(objectstable) do
if c.Name == "DepositMoneyStack" and c:FindFirstChild("Hitbox") and currentbags <= 1 then
if string.match(game.PlaceId,"121625668096152") or string.match(game.PlaceId,"2088934656") or string.match(game.PlaceId,"86300559848070") then
if string.match(game.PlaceId,"121625668096152") then
c.Parent = game.Workspace
end
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Coke" and c:FindFirstChild("Cola") and currentbags <= 1 then
if string.match(game.PlaceId,"121625668096152") or string.match(game.PlaceId,"2088934656") or string.match(game.PlaceId,"86300559848070") then
if string.match(game.PlaceId,"121625668096152") then
c.Parent = game.Workspace
end
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "CandyBucket" and c:FindFirstChild("Bucket") and c:FindFirstChild("Bucket"):FindFirstChild("ProximityPrompt") and currentbags <= 1 then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Bucket") and c:FindFirstChild("Bucket"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Bucket").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("Bucket") and c:FindFirstChild("Bucket"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Bucket"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Bucket") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Bucket").Position).magnitude > 10
if c:FindFirstChild("Bucket") and c:FindFirstChild("Bucket"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Bucket"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "PokerChips" and c:FindFirstChild("Part") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "CellPhoneLoot" and c:FindFirstChild("Part") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "doorBell" and c:FindFirstChild("Part") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "WaitingDoorbell" and c:FindFirstChild("Part") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
elseif c.Name == "FaxMachine" and c:FindFirstChild("FaxPart") then
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 9
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "GasEnter" and c:FindFirstChild("Hole") and c:FindFirstChild("Hole"):FindFirstChild("ProximityPrompt") or c.Name == "gassy" and c:FindFirstChild("Hole") and c:FindFirstChild("Hole"):FindFirstChild("ProximityPrompt") then
if c:FindFirstChild("Hole") and c:FindFirstChild("Hole"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hole").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3.5
repeat
if c:FindFirstChild("Hole") and c:FindFirstChild("Hole"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hole"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hole") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hole").Position).magnitude > 10
if c:FindFirstChild("Hole") and c:FindFirstChild("Hole"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hole"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "FUSEBOXDOOR" and c:FindFirstChild("Main") then
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "disabledFuseBox" and c:FindFirstChild("MeshPart") then
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3.25
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "InsertSnow" and c:FindFirstChild("Screen") and c:FindFirstChild("Screen"):FindFirstChild("ProximityPrompt") and c:FindFirstChild("Disabled") and c:FindFirstChild("Disabled").Value == false and hasSnow == true then
if c:FindFirstChild("Screen") and c:FindFirstChild("Screen"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Screen").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("Screen") and c:FindFirstChild("Screen"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Screen"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Screen") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Screen").Position).magnitude > 10
if c:FindFirstChild("Screen") and c:FindFirstChild("Screen"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Screen"):FindFirstChild("ProximityPrompt"))
hasSnow = false
end
end
elseif c.Name == "disabledSnowMachine" and c:FindFirstChild("Screen") and c:FindFirstChild("Screen"):FindFirstChild("ProximityPromptFix") and c:FindFirstChild("Disabled") and c:FindFirstChild("Disabled").Value == true then
if c:FindFirstChild("Screen") and c:FindFirstChild("Screen"):FindFirstChild("ProximityPromptFix") and (c:FindFirstChild("Screen").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3.25
repeat
if c:FindFirstChild("Screen") and c:FindFirstChild("Screen"):FindFirstChild("ProximityPromptFix") then
StartInteractRemote:FireServer(c:FindFirstChild("Screen"):FindFirstChild("ProximityPromptFix"))
end
task.wait()
until c == nil or not c:FindFirstChild("Screen") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Screen").Position).magnitude > 10
if c:FindFirstChild("Screen") and c:FindFirstChild("Screen"):FindFirstChild("ProximityPromptFix") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Screen"):FindFirstChild("ProximityPromptFix"))
end
end
elseif c.Name == "RotatePressureWheel" and c:FindFirstChild("Center") and c:FindFirstChild("Center"):FindFirstChild("ProximityPrompt") then
if c:FindFirstChild("Center") and c:FindFirstChild("Center"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Center").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
if c:FindFirstChild("Center") and c:FindFirstChild("Center"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Center"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Center") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Center").Position).magnitude > 10
if c:FindFirstChild("Center") and c:FindFirstChild("Center"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Center"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Gift" and c:FindFirstChild("Bow") and c:FindFirstChild("Bow"):FindFirstChild("ProximityPrompt") and currentbags <= 1 then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Bow") and c:FindFirstChild("Bow"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Bow").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
if c:FindFirstChild("Bow") and c:FindFirstChild("Bow"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Bow"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Bow") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Bow").Position).magnitude > 10
if c:FindFirstChild("Bow") and c:FindFirstChild("Bow"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Bow"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Folder" and c:FindFirstChild("Cover") or c.Name == "Folder" and c:FindFirstChild("Paper") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = "Folder"
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") and c:FindFirstChild("Paper") and c:FindFirstChild("Cover") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main") and not c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and c:FindFirstChild("Paper"):FindFirstChild("SurfaceGui") and c:FindFirstChild("Paper"):FindFirstChild("SurfaceGui"):FindFirstChild("TextLabel") then
c:FindFirstChild("tracker").TextLabel.Text = c:FindFirstChild("Paper"):FindFirstChild("SurfaceGui"):FindFirstChild("TextLabel").Text
table.remove(objectstable,op)
end
if c:FindFirstChild("Cover") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Cover") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Cover") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Cover") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main") and c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Cover"):FindFirstChild("FolderOpen"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "GMCKeycodeInput" and c:FindFirstChild("Display") and c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt") then
if c:FindFirstChild("Display") and c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Display").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
if c:FindFirstChild("Display") and c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Display") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Display").Position).magnitude > 10
if c:FindFirstChild("Display") and c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "TimelockScanner" and c:FindFirstChild("Display") and c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt") then
if c:FindFirstChild("Display") and c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Display").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3.5
repeat
if c:FindFirstChild("Display") and c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Display") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Display").Position).magnitude > 10
if c:FindFirstChild("Display") and c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Display"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Shelf" and c:FindFirstChild("CorrectArchives") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = "Correct Shelf"
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 2
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Searched" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
if c:FindFirstChild("tracker") then
c:FindFirstChild("tracker"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "LootablePainting" and c:FindFirstChild("Picture") and currentbags <= 1 or c.Name == "LootableMasterpiece" and c:FindFirstChild("Picture") and currentbags <= 1 then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "LockedPainting" and c:FindFirstChild("Picture") then
if player.Character:FindFirstChild("SAW") and (c:FindFirstChild("Picture").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
for _,c in pairs(game.Workspace.Map.AlarmIronBars:GetChildren())do
if c:FindFirstChild("Bars") then
for _,c2 in pairs(c:FindFirstChild("Bars"):GetChildren())do
local args = {
	player.Character:FindFirstChild("SAW"),
	c2,
	false,
	[6] = vector.create(55,1,-9),
	[7] = 56
}
RS_Package.Assets.Remotes.HitObject:FireServer(unpack(args))
end
end
end
elseif player.Backpack:FindFirstChild("SAW") and (c:FindFirstChild("Picture").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
for _,c in pairs(game.Workspace.Map.AlarmIronBars:GetChildren())do
if c:FindFirstChild("Bars") then
for _,c2 in pairs(c:FindFirstChild("Bars"):GetChildren())do
local args = {
	player.Backpack:FindFirstChild("SAW"),
	c2,
	false,
	[6] = vector.create(55,1,-9),
	[7] = 56
}
RS_Package.Assets.Remotes.HitObject:FireServer(unpack(args))
end 
end 
end
elseif not player.Backpack:FindFirstChild("SAW") and not player.Character:FindFirstChild("SAW") and (c:FindFirstChild("Picture").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
end
elseif c.Name == "Jewels" and c:FindFirstChild("Part") and currentbags <= 1 then
if string.match(game.PlaceId,"121625668096152") or string.match(game.PlaceId,"2088934656") or string.match(game.PlaceId,"86300559848070") then
if string.match(game.PlaceId,"121625668096152") then
c.Parent = game.Workspace
end
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 0.5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Blueprint" and c:FindFirstChild("Blueprint") and c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt") and currentbags <= 1 then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Blueprint") and c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Blueprint").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 0.5
repeat
if c:FindFirstChild("Blueprint") and c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Blueprint") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Blueprint").Position).magnitude > 10
if c:FindFirstChild("Blueprint") and c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Thermal Drill Bag" and c:FindFirstChild("Union") and c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Union") and c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Union").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Union") and c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Union") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Union").Position).magnitude > 10
if c:FindFirstChild("Union") and c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DowntownEasterActivator" and c:FindFirstChild("Union") and c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Union") and c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Union").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Union") and c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Union") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Union").Position).magnitude > 10
if c:FindFirstChild("Union") and c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Union"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "~" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "DowntownEgg" and c:FindFirstChild("Egg") and c:FindFirstChild("Egg"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Egg") and c:FindFirstChild("Egg"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Egg").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Egg") and c:FindFirstChild("Egg"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Egg"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Egg") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Egg").Position).magnitude > 10
if c:FindFirstChild("Egg") and c:FindFirstChild("Egg"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Egg"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "MilitaryCrate" and c:FindFirstChild("Lid") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
elseif c.Name == "MilitaryCrateTIMED" and c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Lid").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Lid") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Lid").Position).magnitude > 10
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "MilitaryCrateUNTIMED" and c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Lid").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Lid") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Lid").Position).magnitude > 10
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "OpenMilitaryCrate" then
if c:FindFirstChild("tracker") then
c:FindFirstChild("tracker"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "OpenedSafe" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "BlownOpen" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "OpenedRegister" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "BoomedBox" then
if c:FindFirstChild("tracker") then
c:FindFirstChild("tracker"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "WeaponBagger" and c:FindFirstChild("Barrel") and currentbags <= 1 then
if string.match(game.PlaceId,"121625668096152") or string.match(game.PlaceId,"2088934656") or string.match(game.PlaceId,"86300559848070") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "GoldBars" and c:FindFirstChild("Bar") and currentbags <= 1 then
if string.match(game.PlaceId,"121625668096152") or string.match(game.PlaceId,"2088934656") or string.match(game.PlaceId,"86300559848070") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Samurai" and c:FindFirstChild("Part") and currentbags <= 1 then
if string.match(game.PlaceId,"121625668096152") or string.match(game.PlaceId,"2088934656") or string.match(game.PlaceId,"86300559848070") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Artifact" and c:FindFirstChild("Handle") and currentbags <= 1 then
if string.match(game.PlaceId,"121625668096152") or string.match(game.PlaceId,"2088934656") or string.match(game.PlaceId,"86300559848070") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "MiniSafe" and c:FindFirstChild("InsertDrill") and c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock") and not string.match(game.PlaceId,"10605039538") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("InsertDrill") and c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock") and (c:FindFirstChild("InsertDrill").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 14
repeat
if c:FindFirstChild("InsertDrill") and c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock") then
StartInteractRemote:FireServer(c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock"))
end
task.wait()
until c == nil or not c:FindFirstChild("InsertDrill") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("InsertDrill").Position).magnitude > 10
if c:FindFirstChild("InsertDrill") and c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock"))
end
end
elseif c.Name == "LootDrill" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and currentbags <= 1 then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Main") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "rfid_faceplate" and c:FindFirstChild("Backplate") and c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Parent.main.serial.SurfaceGui.TextLabel.Text
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Backplate") and c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Backplate").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("Backplate") and c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Backplate") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Backplate").Position).magnitude > 10
if c:FindFirstChild("Backplate") and c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "OpenedRFID" and game.Workspace:FindFirstChild("RFIDObjectiveDoor") and game.Workspace:FindFirstChild("RFIDObjectiveDoor"):FindFirstChild("Highlight_[]") or c.Name == "OpenedRFID" and game.Workspace:FindFirstChild("RFIDObjectiveDoor") and game.Workspace:FindFirstChild("RFIDObjectiveDoor"):FindFirstChild("OpenDoor") then
if c:FindFirstChild("tracker") then
c:FindFirstChild("tracker"):Destroy()
end
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "colorBoxRNG" and c:FindFirstChild("serial") and game.Workspace.Criminals:FindFirstChildOfClass("Model") and game.Workspace:FindFirstChild("prop_stadium_cardReader") and game.Workspace:FindFirstChild("prop_stadium_cardReader").main.serial.SurfaceGui.TextLabel.Text == c:FindFirstChild("serial").SurfaceGui.TextLabel.Text then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = "Correct Box"
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if c:FindFirstChild("colorBoxDoor") and c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main") and c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and c:FindFirstChild("Highlight_[]") and (c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify("colorBoxDoor")
local Time = tick() + .5
repeat
if c:FindFirstChild("colorBoxDoor") and c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main") and c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and c:FindFirstChild("Highlight_[]") then
StartInteractRemote:FireServer(c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("colorBoxDoor") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("colorBoxDoor") and c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main") and c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and c:FindFirstChild("Highlight_[]") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("colorBoxDoor"):FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
if c:FindFirstChild("SimonGame") and c:FindFirstChild("SimonGame"):FindFirstChild("button") and c:FindFirstChild("SimonGame"):FindFirstChild("button"):FindFirstChild("ProximityPrompt") and c:FindFirstChild("OpenBoxDoor") and c:FindFirstChild("Highlight_[]") and workspace.Blueprints.prop_stadium_blueprintTableRNG:FindFirstChild("prop_stadium_blueprint") and (c:FindFirstChild("SimonGame"):FindFirstChild("button").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
local code = ""
for _,colorblueprints in pairs(workspace.Blueprints.prop_stadium_blueprintTableRNG:FindFirstChild("prop_stadium_blueprint"):GetChildren())do
if colorblueprints:FindFirstChild("serial") and colorblueprints:FindFirstChild("serial").SurfaceGui.TextLabel.Text == game.Workspace:FindFirstChild("prop_stadium_cardReader").main.serial.SurfaceGui.TextLabel.Text then
for xd,colorsss in pairs(colorblueprints.colors:GetChildren())do
code = code..colorsss.SurfaceGui.TextLabel.Text
end
end
end
if c:FindFirstChild("SimonGame") and c:FindFirstChild("SimonGame"):FindFirstChild("button") and c:FindFirstChild("SimonGame"):FindFirstChild("button"):FindFirstChild("ProximityPrompt") and c:FindFirstChild("Highlight_[]") then
local args = {c,code}
RS_Package:WaitForChild("Remotes"):WaitForChild("UseSimonSays"):FireServer(unpack(args))
end
task.wait()
until c == nil or not c:FindFirstChild("Highlight_[]") or not c:FindFirstChild("SimonGame"):FindFirstChild("button"):FindFirstChild("ProximityPrompt") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("SimonGame"):FindFirstChild("button").Position).magnitude > 10
end
if game.Workspace:FindFirstChild("RFIDObjectiveDoor") and game.Workspace:FindFirstChild("RFIDObjectiveDoor"):FindFirstChild("Highlight_[]") or game.Workspace:FindFirstChild("RFIDObjectiveDoor") and game.Workspace:FindFirstChild("RFIDObjectiveDoor"):FindFirstChild("OpenDoor") then
if c:FindFirstChild("tracker") then
c:FindFirstChild("tracker"):Destroy()
end
table.remove(objectstable,op)
end
elseif c.Name == "UseUSBComputer" and c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") and hasUSB == true and c:FindFirstChild("Highlight_[]") or c.Name == "UseUSBComputer" and c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") and hasUSB == true and c:FindFirstChild("HIGHLIGHT___") or c.Name == "UseUSBComputer" and c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") and hasUSB == true and c:FindFirstChild("Highlight") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Keyboard").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Keyboard") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Keyboard").Position).magnitude > 10
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
hasUSB = false
end
end
elseif c.Name == "StadiumHackLaptop" and c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Keyboard").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Keyboard") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Keyboard").Position).magnitude > 10
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "AssemblePulleyRope" and c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "AssemblePulleyHook" and c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "PulleyLever" and c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "KeycardKeypad" and c:FindFirstChild("Hitbox") and haskeycard == true and game.Workspace:FindFirstChild("UsedUSBComputer") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
haskeycard = false
end
end
elseif c.Name == "CodeKeypad" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if string.match(game.PlaceId, "6537140247") then
RS_Package.Remotes.UseKeypad:FireServer(game.Workspace:FindFirstChild("UsedUSBComputer").Screen.SurfaceGui.TextLabel.Text)
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
end
elseif c.Name == "_" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "Pulled" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "HackedLaptop" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "UsedUSBComputer" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "stadiumDramaticButton" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and game.Workspace:FindFirstChild("_") and game.Workspace:FindFirstChild("UsedUSBComputer") and c.Used.Value == false then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Main") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "ObjectivePickDoor1" and c:FindFirstChild("Door") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Door") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Door") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Door") or not c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart").Position).magnitude > 10
if c:FindFirstChild("Door") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "ObjectivePickDoor2" and c:FindFirstChild("Door") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Door") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Door") or not c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart").Position).magnitude > 10
if c:FindFirstChild("Door") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "ATMmoney" and c:FindFirstChild("TakeMe") and c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("TakeMe") and c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("TakeMe").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("TakeMe") and c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("TakeMe") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("TakeMe").Position).magnitude > 10
if c:FindFirstChild("TakeMe") and c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "RandomCrate" and c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Spacer").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Spacer") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Spacer").Position).magnitude > 10
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "OpenCrate" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "RushCrate" and c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Spacer").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Spacer") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Spacer").Position).magnitude > 10
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt"))
end
wait(0.2)
end
elseif c.Name == "KickDoor" and c:FindFirstChild("MainPart2") and c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt") and c.Parent.Name ~= "OpenDoor" then
if c:FindFirstChild("MainPart2") and c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("MainPart2").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .1
repeat
if c:FindFirstChild("MainPart2") and c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("MainPart2") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("MainPart2").Position).magnitude > 10
if c:FindFirstChild("MainPart2") and c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "KickDoor" and c.Parent ~= nil and c.Parent.Name == "OpenDoor" or c.Name == "KickDoor" and c.Parent == nil or c.Name == "ObjectivePickDoor1" and c:FindFirstChild("OpenDoor") or c.Name == "ObjectivePickDoor2" and c:FindFirstChild("OpenDoor") then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "Key" and c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "ImportantNote" and c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Part").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Part") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Part").Position).magnitude > 10
if c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Lanyard" and c:FindFirstChild("Handle") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = "Keycard"
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
elseif c.Name == "KeyAccessory" and c:FindFirstChild("Handle") then
if not c.Parent:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c.Parent)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
elseif c.Name == "Crowbar" and c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") and hascrowbar == false then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(0,255,0)
end
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Handle").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Handle") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Handle").Position).magnitude > 10
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Crowbar" and hascrowbar == true then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "CardReader" and c:FindFirstChild("Card") and c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt") and haskeycard == true then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(0,255,0)
end
if c:FindFirstChild("Card") and c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Card").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .1
repeat
if c:FindFirstChild("Card") and c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Card") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Card").Position).magnitude > 10
if c:FindFirstChild("Card") and c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt"))
haskeycard = false
end
end
elseif c.Name == "CardReader" and c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") and haskeycard == true then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(0,255,0)
end
if c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("InteractPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .1
repeat
if c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("InteractPart") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("InteractPart").Position).magnitude > 10
if c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt"))
haskeycard = false
end
end
elseif c.Name == "Card Read!" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "Wirecutters" and c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") and haswirecutters == false then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(0,255,0)
end
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Handle").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Handle") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Handle").Position).magnitude > 10
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Wirecutters" and haswirecutters == true then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "SoccerBall" and c:FindFirstChild("Ball") and c:FindFirstChild("Ball"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Ball") and c:FindFirstChild("Ball"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Ball").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Ball") and c:FindFirstChild("Ball"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Ball"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Ball") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Ball").Position).magnitude > 10
if c:FindFirstChild("Ball") and c:FindFirstChild("Ball"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Ball"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "LockedStorageDoor" and c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") and hasdepotkey == true then
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Handle").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Handle") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Handle").Position).magnitude > 10
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
hasdepotkey = false
end
end
elseif c.Name == "LockedStorageDoor" and c:FindFirstChild("Handle") and not c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
table.remove(objectstable,op)
elseif c.Name == "WitchesBrew" and c:FindFirstChild("Cola") and c:FindFirstChild("Cola"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Cola") and c:FindFirstChild("Cola"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Cola").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("Cola") and c:FindFirstChild("Cola"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Cola"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Cola") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Cola").Position).magnitude > 10
if c:FindFirstChild("Cola") and c:FindFirstChild("Cola"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Cola"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Snow" and c:FindFirstChild("Snow") and c:FindFirstChild("Snow"):FindFirstChild("ProximityPrompt") and c:FindFirstChild("Snow").Parent ~= nil then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Snow") and c:FindFirstChild("Snow"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Snow").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Snow") and c:FindFirstChild("Snow"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Snow"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Snow") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Snow").Position).magnitude > 10
if c:FindFirstChild("Snow") and c:FindFirstChild("Snow"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Snow"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Money" and c:FindFirstChild("Bucks") and c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Bucks") and c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Bucks").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Bucks") and c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Bucks") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Bucks").Position).magnitude > 10
if c:FindFirstChild("Bucks") and c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "PowerBoxPower" and c:FindFirstChild("Part") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = "Disable Cams"
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "disabled" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
if c:FindFirstChild("tracker") then
c:FindFirstChild("tracker"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "CamDisabler" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") or c.Name == "TransportBoatSignal" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") or c.Name == "ArtPowerBox" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Main") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "TransportBoatDoor" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Main") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "~~~" then
table.remove(objectstable,op)
elseif c.Name == "pulledSignal" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
if c:FindFirstChild("tracker") then
c:FindFirstChild("tracker"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "SecureCrate" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Main") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "KeyCard" and c:FindFirstChild("InteractionPart") and c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("InteractionPart") and c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("InteractionPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("InteractionPart") and c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("InteractionPart") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("InteractionPart").Position).magnitude > 10
if c:FindFirstChild("InteractionPart") and c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "PickpocketKeycard" and c:FindFirstChild("Root") and c:FindFirstChild("Root"):FindFirstChild("ProximityPrompt") then
if c:FindFirstChild("Root") and c:FindFirstChild("Root"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Root").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("Root") and c:FindFirstChild("Root"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Root"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Root") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Root").Position).magnitude > 10
if c:FindFirstChild("Root") and c:FindFirstChild("Root"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Root"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "USB" and c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "StageRope" and c:FindFirstChild("missionItem_rope") and c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("missionItem_rope") and c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("missionItem_rope").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("missionItem_rope") and c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("missionItem_rope") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("missionItem_rope").Position).magnitude > 10
if c:FindFirstChild("missionItem_rope") and c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "StageHook" and c:FindFirstChild("missionItem_hook") and c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("missionItem_hook") and c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("missionItem_hook").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("missionItem_hook") and c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("missionItem_hook") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("missionItem_hook").Position).magnitude > 10
if c:FindFirstChild("missionItem_hook") and c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Cash Register" and c:FindFirstChild("Body") and c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt") or c.Name == "Cash Drawer" and c:FindFirstChild("Body") and c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Body") and c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Body").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Body") and c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Body") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Body").Position).magnitude > 10
if c:FindFirstChild("Body") and c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "RushHourPackage" and c:FindFirstChild("Base") and c:FindFirstChild("Base"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Base") and c:FindFirstChild("Base"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Base").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("Base") and c:FindFirstChild("Base"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Base"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Base") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Base").Position).magnitude > 10
if c:FindFirstChild("Base") and c:FindFirstChild("Base"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Base"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "RushHourPackage1" and c:FindFirstChild("Base") or c.Name == "RushHourPackage2" and c:FindFirstChild("Base") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = "HiddenPackage"
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
end
elseif c.Name == "SpecialItem" and c:FindFirstChild("Top") and c:FindFirstChild("Top"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
if game.Workspace:FindFirstChild("StorageDoor") and game.Workspace:FindFirstChild("StorageDoor"):FindFirstChild("OpenDoor") then
c:FindFirstChild("tracker").Enabled = true
elseif game.Workspace:FindFirstChild("StorageDoor") and not game.Workspace:FindFirstChild("StorageDoor"):FindFirstChild("OpenDoor") then
c:FindFirstChild("tracker").Enabled = false
end
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Top") and c:FindFirstChild("Top"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Top").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3
repeat
if c:FindFirstChild("Top") and c:FindFirstChild("Top"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Top"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Top") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Top").Position).magnitude > 10
if c:FindFirstChild("Top") and c:FindFirstChild("Top"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Top"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "SpecialSearchItem" and c:FindFirstChild("Part") or c.Name == "SpecialSearchItem" and c:FindFirstChild("Top") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "HackableComputer" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and not c:FindFirstChild("MeshPart") or c.Name == "HackableComputer" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and c:FindFirstChild("Hack") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 5.5
repeat
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Main") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "HackedComputer" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "RushHourUSB" and c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Main") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DepositMoney" and c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DepositRing" and c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "RingBox" and c:FindFirstChild("Ring") and c:FindFirstChild("Ring"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Ring") and c:FindFirstChild("Ring"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Ring").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Ring") and c:FindFirstChild("Ring"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Ring"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Ring") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Ring").Position).magnitude > 10
if c:FindFirstChild("Ring") and c:FindFirstChild("Ring"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Ring"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "SilverBar" and c:FindFirstChild("Bar") and c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Bar") and c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Bar").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Bar") and c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Bar") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Bar").Position).magnitude > 10
if c:FindFirstChild("Bar") and c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DepositGoldBar" and c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "GoldGuitar" and c:FindFirstChild("missionItem_goldGuitar") and c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("missionItem_goldGuitar") and c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("missionItem_goldGuitar").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("missionItem_goldGuitar") and c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("missionItem_goldGuitar") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("missionItem_goldGuitar").Position).magnitude > 10
if c:FindFirstChild("missionItem_goldGuitar") and c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "JewelCrown" and c:FindFirstChild("Crown") and c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Crown") and c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Crown").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Crown") and c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Crown") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Crown").Position).magnitude > 10
if c:FindFirstChild("Crown") and c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "TrophyLoot" and c:FindFirstChild("loot") and c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("loot") and c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("loot").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("loot") and c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("loot") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("loot").Position).magnitude > 10
if c:FindFirstChild("loot") and c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DisplayCaseRemoveGlass" and c:FindFirstChild("TrophyLoot_") and c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") or c.Name == "DisplayCaseRemoveGlass" and c.Parent:FindFirstChild("model3LOOTABLE") and c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("InteractPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("InteractPart") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("InteractPart").Position).magnitude > 10
if c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DisplayCaseRemoveGlass" and not c:FindFirstChild("TrophyLoot_") and not c:FindFirstChild("TrophyLoot") and not c.Parent:FindFirstChild("model3LOOTABLE") or c.Name == "DisplayCaseRemoveGlass" and c.Parent:FindFirstChild("model3LOOTABLE") and not c.Parent:FindFirstChild("model3LOOTABLE"):FindFirstChild("TrophyLoot_") and not c.Parent:FindFirstChild("model3LOOTABLE"):FindFirstChild("TrophyLoot") then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
table.remove(objectstable,op)
elseif c.Name == "ArtObject" and c:FindFirstChild("Union") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "SmallJewels" and c:FindFirstChild("Part") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "SmallJewels2" and c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") and (c:FindFirstChild("Part").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Part") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Part").Position).magnitude > 10
if c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt"))
end
end
elseif c == nil or c.Parent == nil then
table.remove(objectstable,op)
end
end
end
end
end
