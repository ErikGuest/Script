-- Updated 05/24/2020
-- Does this crash you? DM me and I'll try to find a fix to the issue

FarmStart = false
FarmArea = "none"
WalkNumber = "1"
JumpNumber = "1"

local petTable = {}
local Try = 0
local Amount = 0

function PetTable()
	local Stats = workspace["__REMOTES"]["Core"]["Get Other Stats"]:InvokeServer()
	local Times = #Stats[game.Players.LocalPlayer.Name]["Save"]["Pets"]
	local Name = game:GetService("Players").LocalPlayer.Name
	petTable = {}
	Try = 0
	Amount = 0
    for i=1,Times do
        if(Stats[Name]["Save"]["Pets"][Times].e == true) then
			Amount = Amount + 1
			petTable[Amount] = {
				["ID"] = tonumber(Stats[Name]["Save"]["Pets"][Times].id),
				["LEVEL"] = tonumber(Stats[Name]["Save"]["Pets"][Times].l),
			}
        end
        Times = Times - 1
    end
end

local MainGUI = Instance.new("ScreenGui")
local TopFrame = Instance.new("Frame")
local PSHeader = Instance.new("TextLabel")
local ClosePS = Instance.new("TextButton")
local StatsFrame = Instance.new("Frame")
local FarmCoins = Instance.new("TextButton")
local FarmFrame = Instance.new("Frame")
local PowerTextInfo1 = Instance.new("TextLabel")
local PowerText1 = Instance.new("TextLabel")
local FarmPower = Instance.new("TextBox")
local StartFarming = Instance.new("TextButton")
local StartFarmingEarth = Instance.new("TextButton")
local StartFarmingMoon = Instance.new("TextButton")
local WalkSpeed = Instance.new("TextButton")
local JumpPower = Instance.new("TextButton")
local BuyScreen = Instance.new("TextButton")
local BuyScreenFrame = Instance.new("Frame")
local BuyPetTitle1 = Instance.new("TextLabel")
local BuyPetTitle2 = Instance.new("TextLabel")
local BuyPetTitle3 = Instance.new("TextLabel")
local BuyPetAmount1 = Instance.new("TextLabel")
local BuyPetAmount2 = Instance.new("TextBox")
local BuyPetAmount3 = Instance.new("TextBox")
local BuyPetTier1 = Instance.new("TextLabel")
local BuyPetTier2 = Instance.new("TextBox")
local BuyPetGo = Instance.new("TextButton")
local BuyHatTitle1 = Instance.new("TextLabel")
local BuyHatTitle2 = Instance.new("TextLabel")
local BuyHatAmount1 = Instance.new("TextLabel")
local BuyHatAmount2 = Instance.new("TextBox")
local BuyHatTier1 = Instance.new("TextLabel")
local BuyHatTier2 = Instance.new("TextBox")
local BuyHatGo = Instance.new("TextButton")
local Locations = Instance.new("TextButton")
local Locations2 = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local Stats = Instance.new("TextButton")
local Spawn = Instance.new("TextButton")
local Shop = Instance.new("TextButton")
local Area2 = Instance.new("TextButton")
local Area3 = Instance.new("TextButton")
local Area4 = Instance.new("TextButton")
local Area5 = Instance.new("TextButton")
local Area6 = Instance.new("TextButton")
local Area7 = Instance.new("TextButton")
local Area8 = Instance.new("TextButton")
local Area9 = Instance.new("TextButton")
local Area10 = Instance.new("TextButton")
local Area11 = Instance.new("TextButton")
local Area12 = Instance.new("TextButton")
local Rocket = Instance.new("TextButton")
local CandyLand = Instance.new("TextButton")
local CyborgLand = Instance.new("TextButton")
local AreaDivider = Instance.new("TextLabel")
local AllHealthLabel = Instance.new("TextLabel")
local AllHealthMinLabel = Instance.new("TextLabel")
local AllHealthMaxLabel = Instance.new("TextLabel")
local AllHealthMin = Instance.new("TextBox")
local AllHealthMax = Instance.new("TextBox")
local EarthHealthLabel = Instance.new("TextLabel")
local EarthHealthMinLabel = Instance.new("TextLabel")
local EarthHealthMaxLabel = Instance.new("TextLabel")
local EarthHealthMin = Instance.new("TextBox")
local EarthHealthMax = Instance.new("TextBox")
local MoonHealthLabel = Instance.new("TextLabel")
local MoonHealthMinLabel = Instance.new("TextLabel")
local MoonHealthMaxLabel = Instance.new("TextLabel")
local MoonHealthMin = Instance.new("TextBox")
local MoonHealthMax = Instance.new("TextBox")
local TeleportScreen = Instance.new("TextButton")

MainGUI.Name = "MainGUI"
MainGUI.Parent = game.CoreGui
local MainCORE = game.CoreGui["MainGUI"]

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainGUI
TopFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
TopFrame.BackgroundTransparency = 0
TopFrame.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
TopFrame.Active = true
TopFrame.Selectable = true
TopFrame.Draggable = true
TopFrame.Visible = true
TopFrame.Position = UDim2.new(1, -145, 0.5, -100)
TopFrame.Size = UDim2.new(0, 140, 0, 30)

PSHeader.Name = "PSHeader"
PSHeader.Parent = TopFrame
PSHeader.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
PSHeader.BackgroundTransparency = 1
PSHeader.BorderSizePixel = 0
PSHeader.BorderColor3 = Color3.new(0, 0, 0)
PSHeader.Position = UDim2.new(0, 5, 0, 5)
PSHeader.Size = UDim2.new(0, 105, 0, 20)
PSHeader.Font = Enum.Font.Fantasy
PSHeader.Text = "SGD MODz CO. 2020"
PSHeader.TextColor3 = Color3.new(0, 0, 0)
PSHeader.TextScaled = true
PSHeader.TextSize = 17

ClosePS.Name = "ClosePS"
ClosePS.Parent = TopFrame
ClosePS.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
ClosePS.BorderColor3 = Color3.new(0, 0, 0)
ClosePS.Position = UDim2.new(0, 115, 0, 5)
ClosePS.Size = UDim2.new(0, 20, 0, 20)
ClosePS.Font = Enum.Font.Fantasy
ClosePS.Text = "X"
ClosePS.TextColor3 = Color3.new(1, 0, 0)
ClosePS.TextScaled = true
ClosePS.TextSize = 17

MainFrame.Name = "MainFrame"
MainFrame.Parent = TopFrame
MainFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
MainFrame.BackgroundTransparency = 0
MainFrame.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
MainFrame.Position = UDim2.new(0, 0, 0, 30)
MainFrame.Size = UDim2.new(0, 140, 0, 433)
MainFrame.Visible = true

BuyScreen.Name = "BuyScreen"
BuyScreen.Parent = MainFrame
BuyScreen.BackgroundColor3 = Color3.new(0, 0, 0)
BuyScreen.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyScreen.Position = UDim2.new(0, 5, 0, 5)
BuyScreen.Size = UDim2.new(0, 60, 0, 25)
BuyScreen.Font = Enum.Font.Fantasy
BuyScreen.TextColor3 = Color3.new(1, 1, 1)
BuyScreen.Text = "EggStore"
BuyScreen.TextSize = 17
BuyScreen.TextWrapped = true

FarmCoins.Name = "Auto-Collect"
FarmCoins.Parent = MainFrame
FarmCoins.BackgroundColor3 = Color3.new(0, 0, 0)
FarmCoins.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
FarmCoins.Position = UDim2.new(0, 75, 0, 5)
FarmCoins.Size = UDim2.new(0, 60, 0, 25)
FarmCoins.Font = Enum.Font.Fantasy
FarmCoins.TextColor3 = Color3.new(1, 1, 1)
FarmCoins.Text = "Auto-Collect"
FarmCoins.TextSize = 17
FarmCoins.TextWrapped = true

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = MainFrame
WalkSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
WalkSpeed.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
WalkSpeed.Position = UDim2.new(0, 5, 0, 40)
WalkSpeed.Size = UDim2.new(0, 60, 0, 25)
WalkSpeed.Font = Enum.Font.Fantasy
WalkSpeed.TextColor3 = Color3.new(1, 1, 1)
WalkSpeed.Text = "Walk:1"
WalkSpeed.TextSize = 17
WalkSpeed.TextWrapped = true

JumpPower.Name = "JumpPower"
JumpPower.Parent = MainFrame
JumpPower.BackgroundColor3 = Color3.new(0, 0, 0)
JumpPower.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
JumpPower.Position = UDim2.new(0, 75, 0, 40)
JumpPower.Size = UDim2.new(0, 60, 0, 25)
JumpPower.Font = Enum.Font.Fantasy
JumpPower.TextColor3 = Color3.new(1, 1, 1)
JumpPower.Text = "Jump:1"
JumpPower.TextSize = 17
JumpPower.TextWrapped = true

TeleportScreen.Name = "TeleportScreen"
TeleportScreen.Parent = MainFrame
TeleportScreen.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportScreen.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
TeleportScreen.Position = UDim2.new(0, 5, 0, 75)
TeleportScreen.Size = UDim2.new(0, 130, 0, 20)
TeleportScreen.Font = Enum.Font.Fantasy
TeleportScreen.TextColor3 = Color3.new(1, 1, 1)
TeleportScreen.Text = "GAME TELEPORT"
TeleportScreen.TextSize = 17
TeleportScreen.TextWrapped = true

Spawn.Name = "Spawn"
Spawn.Parent = MainFrame
Spawn.BackgroundColor3 = Color3.new(0, 0, 0)
Spawn.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Spawn.Position = UDim2.new(0, 5, 0, 100)
Spawn.Size = UDim2.new(0, 130, 0, 20)
Spawn.Font = Enum.Font.Fantasy
Spawn.TextColor3 = Color3.new(1, 1, 1)
Spawn.Text = "Spawn Area"
Spawn.TextSize = 17
Spawn.TextWrapped = true

Shop.Name = "Shop"
Shop.Parent = MainFrame
Shop.BackgroundColor3 = Color3.new(0, 0, 0)
Shop.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Shop.Position = UDim2.new(0, 5, 0, 125)
Shop.Size = UDim2.new(0, 130, 0, 20)
Shop.Font = Enum.Font.Fantasy
Shop.TextColor3 = Color3.new(1, 1, 1)
Shop.Text = "Egg Shop"
Shop.TextSize = 17
Shop.TextWrapped = true

Area2.Name = "Area2"
Area2.Parent = MainFrame
Area2.BackgroundColor3 = Color3.new(0, 0, 0)
Area2.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area2.Position = UDim2.new(0, 5, 0, 150)
Area2.Size = UDim2.new(0, 130, 0, 20)
Area2.Font = Enum.Font.Fantasy
Area2.TextColor3 = Color3.new(1, 1, 1)
Area2.Text = "25K Area"
Area2.TextSize = 17
Area2.TextWrapped = true

Area3.Name = "Area3"
Area3.Parent = MainFrame
Area3.BackgroundColor3 = Color3.new(0, 0, 0)
Area3.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area3.Position = UDim2.new(0, 5, 0, 175)
Area3.Size = UDim2.new(0, 130, 0, 20)
Area3.Font = Enum.Font.Fantasy
Area3.TextColor3 = Color3.new(1, 1, 1)
Area3.Text = "400K Area"
Area3.TextSize = 17
Area3.TextWrapped = true

Area4.Name = "Area4"
Area4.Parent = MainFrame
Area4.BackgroundColor3 = Color3.new(0, 0, 0)
Area4.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area4.Position = UDim2.new(0, 5, 0, 200)
Area4.Size = UDim2.new(0, 130, 0, 20)
Area4.Font = Enum.Font.Fantasy
Area4.TextColor3 = Color3.new(1, 1, 1)
Area4.Text = "2.5M Area"
Area4.TextSize = 17
Area4.TextWrapped = true

Area5.Name = "Area5"
Area5.Parent = MainFrame
Area5.BackgroundColor3 = Color3.new(0, 0, 0)
Area5.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area5.Position = UDim2.new(0, 5, 0, 225)
Area5.Size = UDim2.new(0, 130, 0, 20)
Area5.Font = Enum.Font.Fantasy
Area5.TextColor3 = Color3.new(1, 1, 1)
Area5.Text = "20M Area"
Area5.TextSize = 17
Area5.TextWrapped = true

Area6.Name = "Area6"
Area6.Parent = MainFrame
Area6.BackgroundColor3 = Color3.new(0, 0, 0)
Area6.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area6.Position = UDim2.new(0, 5, 0, 250)
Area6.Size = UDim2.new(0, 130, 0, 20)
Area6.Font = Enum.Font.Fantasy
Area6.TextColor3 = Color3.new(1, 1, 1)
Area6.Text = "500M Area"
Area6.TextSize = 17
Area6.TextWrapped = true

Rocket.Name = "Rocket"
Rocket.Parent = MainFrame
Rocket.BackgroundColor3 = Color3.new(0, 0, 0)
Rocket.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Rocket.Position = UDim2.new(0, 5, 0, 275)
Rocket.Size = UDim2.new(0, 130, 0, 20)
Rocket.Font = Enum.Font.Fantasy
Rocket.TextColor3 = Color3.new(1, 1, 1)
Rocket.Text = "Rocket Area"
Rocket.TextSize = 17
Rocket.TextWrapped = true

AreaDivider.Name = "AreaDivider"
AreaDivider.Parent = MainFrame
AreaDivider.BackgroundColor3 = Color3.new(0, 0, 0)
AreaDivider.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
AreaDivider.Position = UDim2.new(0, 0, 0, 300)
AreaDivider.Size = UDim2.new(0, 140, 0, 3)
AreaDivider.Font = Enum.Font.Fantasy
AreaDivider.Text = ""
AreaDivider.TextSize = 17

Area9.Name = "Area9"
Area9.Parent = MainFrame
Area9.BackgroundColor3 = Color3.new(0, 0, 0)
Area9.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area9.Position = UDim2.new(0, 5, 0, 308)
Area9.Size = UDim2.new(0, 130, 0, 20)
Area9.Font = Enum.Font.Fantasy
Area9.TextColor3 = Color3.new(1, 1, 1)
Area9.Text = "Moon Spawn Point"
Area9.TextSize = 17
Area9.TextWrapped = true

Area8.Name = "Area8"
Area8.Parent = MainFrame
Area8.BackgroundColor3 = Color3.new(0, 0, 0)
Area8.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area8.Position = UDim2.new(0, 5, 0, 333)
Area8.Size = UDim2.new(0, 130, 0, 20)
Area8.Font = Enum.Font.Fantasy
Area8.TextColor3 = Color3.new(1, 1, 1)
Area8.Text = "Moon Egg Shop"
Area8.TextSize = 17
Area8.TextWrapped = true

Area10.Name = "Area10"
Area10.Parent = MainFrame
Area10.BackgroundColor3 = Color3.new(0, 0, 0)
Area10.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area10.Position = UDim2.new(0, 5, 0, 358)
Area10.Size = UDim2.new(0, 130, 0, 20)
Area10.Font = Enum.Font.Fantasy
Area10.TextColor3 = Color3.new(1, 1, 1)
Area10.Text = "Moon Area 2"
Area10.TextSize = 17
Area10.TextWrapped = true

CandyLand.Name = "CandyLand"
CandyLand.Parent = MainFrame
CandyLand.BackgroundColor3 = Color3.new(0, 0, 0)
CandyLand.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
CandyLand.Position = UDim2.new(0, 5, 0, 383)
CandyLand.Size = UDim2.new(0, 130, 0, 20)
CandyLand.Font = Enum.Font.Fantasy
CandyLand.TextColor3 = Color3.new(1, 1, 1)
CandyLand.Text = "Candy Land"
CandyLand.TextSize = 17
CandyLand.TextWrapped = true

CyborgLand.Name = "CyborgLand"
CyborgLand.Parent = MainFrame
CyborgLand.BackgroundColor3 = Color3.new(0, 0, 0)
CyborgLand.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
CyborgLand.Position = UDim2.new(0, 5, 0, 408)
CyborgLand.Size = UDim2.new(0, 130, 0, 20)
CyborgLand.Font = Enum.Font.Fantasy
CyborgLand.TextColor3 = Color3.new(1, 1, 1)
CyborgLand.Text = "Cyborg Land"
CyborgLand.TextSize = 17
CyborgLand.TextWrapped = true

BuyScreenFrame.Name = "BuyScreenFrame"
BuyScreenFrame.Parent = TopFrame
BuyScreenFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
BuyScreenFrame.BackgroundTransparency = 0
BuyScreenFrame.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyScreenFrame.Position = UDim2.new(0, 0, 0, 30)
BuyScreenFrame.Size = UDim2.new(0, 140, 0, 350)
BuyScreenFrame.Visible = false

Locations.Name = "Locations"
Locations.Parent = BuyScreenFrame
Locations.BackgroundColor3 = Color3.new(0, 0, 0)
Locations.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Locations.Position = UDim2.new(0, 5, 0, 5)
Locations.Size = UDim2.new(0, 130, 0, 25)
Locations.Font = Enum.Font.Fantasy
Locations.TextColor3 = Color3.new(1, 1, 1)
Locations.Text = "LOCATIONS"
Locations.TextSize = 17
Locations.TextWrapped = true

BuyPetTitle1.Name = "BuyPetTitle1"
BuyPetTitle1.Parent = BuyScreenFrame
BuyPetTitle1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyPetTitle1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyPetTitle1.Position = UDim2.new(0, 5, 0, 50)
BuyPetTitle1.Size = UDim2.new(0, 130, 0, 55)
BuyPetTitle1.Font = Enum.Font.Fantasy
BuyPetTitle1.TextColor3 = Color3.new(1, 1, 1)
BuyPetTitle1.Text = "You must have the money to buy what you want"
BuyPetTitle1.TextSize = 17
BuyPetTitle1.TextWrapped = true

BuyPetTitle2.Name = "BuyPetTitle2"
BuyPetTitle2.Parent = BuyScreenFrame
BuyPetTitle2.BackgroundTransparency = 1
BuyPetTitle2.BorderSizePixel = 0
BuyPetTitle2.Position = UDim2.new(0, 5, 0, 110)
BuyPetTitle2.Size = UDim2.new(0, 130, 0, 20)
BuyPetTitle2.Font = Enum.Font.Fantasy
BuyPetTitle2.TextColor3 = Color3.new(0, 0, 0)
BuyPetTitle2.Text = "Pets Tier 1-18"
BuyPetTitle2.TextSize = 17
BuyPetTitle2.TextWrapped = true

BuyPetAmount1.Name = "BuyPetAmount1"
BuyPetAmount1.Parent = BuyScreenFrame
BuyPetAmount1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyPetAmount1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyPetAmount1.Position = UDim2.new(0, 6, 0, 129)
BuyPetAmount1.Size = UDim2.new(0, 89, 0, 21)
BuyPetAmount1.Font = Enum.Font.Fantasy
BuyPetAmount1.TextColor3 = Color3.new(1, 1, 1)
BuyPetAmount1.Text = "You Want"
BuyPetAmount1.TextSize = 17
BuyPetAmount1.TextWrapped = true

BuyPetAmount2.Name = "BuyPetAmount2"
BuyPetAmount2.Parent = BuyScreenFrame
BuyPetAmount2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BuyPetAmount2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyPetAmount2.Position = UDim2.new(0, 95, 0, 130)
BuyPetAmount2.Size = UDim2.new(0, 40, 0, 20)
BuyPetAmount2.Font = Enum.Font.Fantasy
BuyPetAmount2.TextColor3 = Color3.new(1, 1, 1)
BuyPetAmount2.Text = "1"
BuyPetAmount2.TextSize = 17
BuyPetAmount2.TextWrapped = true

BuyPetTier1.Name = "BuyPetTier1"
BuyPetTier1.Parent = BuyScreenFrame
BuyPetTier1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyPetTier1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyPetTier1.Position = UDim2.new(0, 6, 0, 150)
BuyPetTier1.Size = UDim2.new(0, 89, 0, 20)
BuyPetTier1.Font = Enum.Font.Fantasy
BuyPetTier1.TextColor3 = Color3.new(1, 1, 1)
BuyPetTier1.Text = "Tier"
BuyPetTier1.TextSize = 17
BuyPetTier1.TextWrapped = true

BuyPetTier2.Name = "BuyPetTier2"
BuyPetTier2.Parent = BuyScreenFrame
BuyPetTier2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BuyPetTier2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyPetTier2.Position = UDim2.new(0, 95, 0, 150)
BuyPetTier2.Size = UDim2.new(0, 40, 0, 20)
BuyPetTier2.Font = Enum.Font.Fantasy
BuyPetTier2.TextColor3 = Color3.new(1, 1, 1)
BuyPetTier2.Text = "16"
BuyPetTier2.TextSize = 17
BuyPetTier2.TextWrapped = true

BuyPetGo.Name = "BuyPetGo"
BuyPetGo.Parent = BuyScreenFrame
BuyPetGo.BackgroundColor3 = Color3.new(0.3, 0, 0)
BuyPetGo.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyPetGo.Position = UDim2.new(0, 5, 0, 170)
BuyPetGo.Size = UDim2.new(0, 130, 0, 20)
BuyPetGo.Font = Enum.Font.Fantasy
BuyPetGo.TextColor3 = Color3.new(1, 1, 1)
BuyPetGo.Text = "Purchase"
BuyPetGo.TextSize = 17
BuyPetGo.TextWrapped = true

BuyPetTitle3.Name = "BuyPetTitle3"
BuyPetTitle3.Parent = BuyScreenFrame
BuyPetTitle3.BackgroundColor3 = Color3.new(0, 0, 0)
BuyPetTitle3.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyPetTitle3.Position = UDim2.new(0, 5, 0, 195)
BuyPetTitle3.Size = UDim2.new(0, 130, 0, 20)
BuyPetTitle3.Font = Enum.Font.Fantasy
BuyPetTitle3.TextColor3 = Color3.new(1, 1, 1)
BuyPetTitle3.Text = "In Tier type 1-18"
BuyPetTitle3.TextSize = 17
BuyPetTitle3.TextWrapped = true

BuyHatTitle2.Name = "BuyHatTitle2"
BuyHatTitle2.Parent = BuyScreenFrame
BuyHatTitle2.BackgroundTransparency = 1
BuyHatTitle2.BorderSizePixel = 0
BuyHatTitle2.Position = UDim2.new(0, 5, 0, 225)
BuyHatTitle2.Size = UDim2.new(0, 130, 0, 20)
BuyHatTitle2.Font = Enum.Font.Fantasy
BuyHatTitle2.TextColor3 = Color3.new(0, 0, 0)
BuyHatTitle2.Text = "BUY HATS"
BuyHatTitle2.TextSize = 17
BuyHatTitle2.TextWrapped = true

BuyHatAmount1.Name = "BuyHatAmount1"
BuyHatAmount1.Parent = BuyScreenFrame
BuyHatAmount1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyHatAmount1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyHatAmount1.Position = UDim2.new(0, 6, 0, 245)
BuyHatAmount1.Size = UDim2.new(0, 89, 0, 20)
BuyHatAmount1.Font = Enum.Font.Fantasy
BuyHatAmount1.TextColor3 = Color3.new(1, 1, 1)
BuyHatAmount1.Text = "Amount"
BuyHatAmount1.TextSize = 17
BuyHatAmount1.TextWrapped = true

BuyHatAmount2.Name = "BuyHatAmount2"
BuyHatAmount2.Parent = BuyScreenFrame
BuyHatAmount2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BuyHatAmount2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyHatAmount2.Position = UDim2.new(0, 95, 0, 244)
BuyHatAmount2.Size = UDim2.new(0, 40, 0, 21)
BuyHatAmount2.Font = Enum.Font.Fantasy
BuyHatAmount2.TextColor3 = Color3.new(1, 1, 1)
BuyHatAmount2.Text = "1"
BuyHatAmount2.TextSize = 17
BuyHatAmount2.TextWrapped = true

BuyHatTier1.Name = "BuyHatTier1"
BuyHatTier1.Parent = BuyScreenFrame
BuyHatTier1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyHatTier1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyHatTier1.Position = UDim2.new(0, 6, 0, 265)
BuyHatTier1.Size = UDim2.new(0, 60, 0, 20)
BuyHatTier1.Font = Enum.Font.Fantasy
BuyHatTier1.TextColor3 = Color3.new(1, 1, 1)
BuyHatTier1.Text = "Tier"
BuyHatTier1.TextSize = 17
BuyHatTier1.TextWrapped = true

BuyHatTier2.Name = "BuyHatTier2"
BuyHatTier2.Parent = BuyScreenFrame
BuyHatTier2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BuyHatTier2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyHatTier2.Position = UDim2.new(0, 66, 0, 265)
BuyHatTier2.Size = UDim2.new(0, 69, 0, 20)
BuyHatTier2.Font = Enum.Font.Fantasy
BuyHatTier2.TextColor3 = Color3.new(1, 1, 1)
BuyHatTier2.Text = "Golden"
BuyHatTier2.TextSize = 17
BuyHatTier2.TextWrapped = true

BuyHatGo.Name = "BuyHatGo"
BuyHatGo.Parent = BuyScreenFrame
BuyHatGo.BackgroundColor3 = Color3.new(0.3, 0, 0)
BuyHatGo.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyHatGo.Position = UDim2.new(0, 5, 0, 285)
BuyHatGo.Size = UDim2.new(0, 130, 0, 20)
BuyHatGo.Font = Enum.Font.Fantasy
BuyHatGo.TextColor3 = Color3.new(1, 1, 1)
BuyHatGo.Text = "Purchase"
BuyHatGo.TextSize = 17
BuyHatGo.TextWrapped = true

BuyHatTitle1.Name = "BuyHatTitle1"
BuyHatTitle1.Parent = BuyScreenFrame
BuyHatTitle1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyHatTitle1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyHatTitle1.Position = UDim2.new(0, 5, 0, 310)
BuyHatTitle1.Size = UDim2.new(0, 130, 0, 35)
BuyHatTitle1.Font = Enum.Font.Fantasy
BuyHatTitle1.TextColor3 = Color3.new(1, 1, 1)
BuyHatTitle1.Text = "In Tier type 1-4 or Golden"
BuyHatTitle1.TextSize = 17
BuyHatTitle1.TextWrapped = true

FarmFrame.Name = "FarmFrame"
FarmFrame.Parent = TopFrame
FarmFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
FarmFrame.BackgroundTransparency = 0
FarmFrame.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
FarmFrame.Position = UDim2.new(0, 0, 0, 30)
FarmFrame.Size = UDim2.new(0, 140, 0, 351)
FarmFrame.Visible = false

Locations2.Name = "Locations2"
Locations2.Parent = FarmFrame
Locations2.BackgroundColor3 = Color3.new(0, 0, 0)
Locations2.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Locations2.Position = UDim2.new(0, 5, 0, 5)
Locations2.Size = UDim2.new(0, 130, 0, 25)
Locations2.Font = Enum.Font.Fantasy
Locations2.TextColor3 = Color3.new(1, 1, 1)
Locations2.Text = "Teleportation"
Locations2.TextSize = 17
Locations2.TextWrapped = true

AllHealthLabel.Name = "AllHealthLabel"
AllHealthLabel.Parent = FarmFrame
AllHealthLabel.BackgroundColor3 = Color3.new(0, 0, 0)
AllHealthLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthLabel.Position = UDim2.new(0, 5, 0, 50)
AllHealthLabel.Size = UDim2.new(0, 130, 0, 20)
AllHealthLabel.Font = Enum.Font.Fantasy
AllHealthLabel.TextColor3 = Color3.new(1, 1, 1)
AllHealthLabel.Text = "All Coins"
AllHealthLabel.TextSize = 17
AllHealthLabel.TextWrapped = true

AllHealthMinLabel.Name = "AllHealthMinLabel"
AllHealthMinLabel.Parent = FarmFrame
AllHealthMinLabel.BackgroundColor3 = Color3.new(0, 0, 0)
AllHealthMinLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthMinLabel.Position = UDim2.new(0, 5, 0, 71)
AllHealthMinLabel.Size = UDim2.new(0, 40, 0, 20)
AllHealthMinLabel.Font = Enum.Font.Fantasy
AllHealthMinLabel.TextColor3 = Color3.new(1, 1, 1)
AllHealthMinLabel.Text = "Low"
AllHealthMinLabel.TextSize = 17
AllHealthMinLabel.TextWrapped = true

AllHealthMin.Name = "AllHealthMin"
AllHealthMin.Parent = FarmFrame
AllHealthMin.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
AllHealthMin.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthMin.Position = UDim2.new(0, 46, 0, 71)
AllHealthMin.Size = UDim2.new(0, 89, 0, 20)
AllHealthMin.Font = Enum.Font.Fantasy
AllHealthMin.TextColor3 = Color3.new(1, 1, 1)
AllHealthMin.Text = "1"
AllHealthMin.TextSize = 17
AllHealthMin.TextWrapped = true

AllHealthMaxLabel.Name = "AllHealthMaxLabel"
AllHealthMaxLabel.Parent = FarmFrame
AllHealthMaxLabel.BackgroundColor3 = Color3.new(0, 0, 0)
AllHealthMaxLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthMaxLabel.Position = UDim2.new(0, 5, 0, 92)
AllHealthMaxLabel.Size = UDim2.new(0, 40, 0, 20)
AllHealthMaxLabel.Font = Enum.Font.Fantasy
AllHealthMaxLabel.TextColor3 = Color3.new(1, 1, 1)
AllHealthMaxLabel.Text = "High"
AllHealthMaxLabel.TextSize = 17
AllHealthMaxLabel.TextWrapped = true

AllHealthMax.Name = "AllHealthMax"
AllHealthMax.Parent = FarmFrame
AllHealthMax.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
AllHealthMax.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthMax.Position = UDim2.new(0, 46, 0, 92)
AllHealthMax.Size = UDim2.new(0, 89, 0, 20)
AllHealthMax.Font = Enum.Font.Fantasy
AllHealthMax.TextColor3 = Color3.new(1, 1, 1)
AllHealthMax.Text = "10e6"
AllHealthMax.TextSize = 17
AllHealthMax.TextWrapped = true

StartFarming.Name = "StartFarming"
StartFarming.Parent = FarmFrame
StartFarming.BackgroundColor3 = Color3.new(0.3, 0, 0)
StartFarming.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartFarming.Position = UDim2.new(0, 5, 0, 117)
StartFarming.Size = UDim2.new(0, 130, 0, 25)
StartFarming.Font = Enum.Font.Fantasy
StartFarming.TextColor3 = Color3.new(1, 1, 1)
StartFarming.Text = "Mine: OFF"
StartFarming.TextSize = 17
StartFarming.TextWrapped = true

EarthHealthLabel.Name = "EarthHealthLabel"
EarthHealthLabel.Parent = FarmFrame
EarthHealthLabel.BackgroundColor3 = Color3.new(0, 0, 0)
EarthHealthLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthLabel.Position = UDim2.new(0, 5, 0, 152)
EarthHealthLabel.Size = UDim2.new(0, 130, 0, 20)
EarthHealthLabel.Font = Enum.Font.Fantasy
EarthHealthLabel.TextColor3 = Color3.new(1, 1, 1)
EarthHealthLabel.Text = "Earth Coins Health"
EarthHealthLabel.TextSize = 17
EarthHealthLabel.TextWrapped = true

EarthHealthMinLabel.Name = "EarthHealthMinLabel"
EarthHealthMinLabel.Parent = FarmFrame
EarthHealthMinLabel.BackgroundColor3 = Color3.new(0, 0, 0)
EarthHealthMinLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthMinLabel.Position = UDim2.new(0, 5, 0, 173)
EarthHealthMinLabel.Size = UDim2.new(0, 40, 0, 20)
EarthHealthMinLabel.Font = Enum.Font.Fantasy
EarthHealthMinLabel.TextColor3 = Color3.new(1, 1, 1)
EarthHealthMinLabel.Text = "Low"
EarthHealthMinLabel.TextSize = 17
EarthHealthMinLabel.TextWrapped = true

EarthHealthMin.Name = "EarthHealthMin"
EarthHealthMin.Parent = FarmFrame
EarthHealthMin.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
EarthHealthMin.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthMin.Position = UDim2.new(0, 46, 0, 173)
EarthHealthMin.Size = UDim2.new(0, 89, 0, 20)
EarthHealthMin.Font = Enum.Font.Fantasy
EarthHealthMin.TextColor3 = Color3.new(1, 1, 1)
EarthHealthMin.Text = "1"
EarthHealthMin.TextSize = 17
EarthHealthMin.TextWrapped = true

EarthHealthMaxLabel.Name = "EarthHealthMaxLabel"
EarthHealthMaxLabel.Parent = FarmFrame
EarthHealthMaxLabel.BackgroundColor3 = Color3.new(0, 0, 0)
EarthHealthMaxLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthMaxLabel.Position = UDim2.new(0, 5, 0, 194)
EarthHealthMaxLabel.Size = UDim2.new(0, 40, 0, 20)
EarthHealthMaxLabel.Font = Enum.Font.Fantasy
EarthHealthMaxLabel.TextColor3 = Color3.new(1, 1, 1)
EarthHealthMaxLabel.Text = "High"
EarthHealthMaxLabel.TextSize = 17
EarthHealthMaxLabel.TextWrapped = true

EarthHealthMax.Name = "EarthHealthMax"
EarthHealthMax.Parent = FarmFrame
EarthHealthMax.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
EarthHealthMax.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthMax.Position = UDim2.new(0, 46, 0, 194)
EarthHealthMax.Size = UDim2.new(0, 89, 0, 20)
EarthHealthMax.Font = Enum.Font.Fantasy
EarthHealthMax.TextColor3 = Color3.new(1, 1, 1)
EarthHealthMax.Text = "20e06"
EarthHealthMax.TextSize = 17
EarthHealthMax.TextWrapped = true

StartFarmingEarth.Name = "StartFarmingEarth"
StartFarmingEarth.Parent = FarmFrame
StartFarmingEarth.BackgroundColor3 = Color3.new(0.3, 0, 0)
StartFarmingEarth.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartFarmingEarth.Position = UDim2.new(0, 5, 0, 219)
StartFarmingEarth.Size = UDim2.new(0, 130, 0, 25)
StartFarmingEarth.Font = Enum.Font.Fantasy
StartFarmingEarth.TextColor3 = Color3.new(1, 1, 1)
StartFarmingEarth.Text = "Mine Earth: OFF"
StartFarmingEarth.TextSize = 17
StartFarmingEarth.TextWrapped = true

MoonHealthLabel.Name = "MoonHealthLabel"
MoonHealthLabel.Parent = FarmFrame
MoonHealthLabel.BackgroundColor3 = Color3.new(0, 0, 0)
MoonHealthLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthLabel.Position = UDim2.new(0, 5, 0, 254)
MoonHealthLabel.Size = UDim2.new(0, 130, 0, 20)
MoonHealthLabel.Font = Enum.Font.Fantasy
MoonHealthLabel.TextColor3 = Color3.new(1, 1, 1)
MoonHealthLabel.Text = "Moon & Festive Coins"
MoonHealthLabel.TextSize = 17
MoonHealthLabel.TextWrapped = true

MoonHealthMinLabel.Name = "MoonHealthMinLabel"
MoonHealthMinLabel.Parent = FarmFrame
MoonHealthMinLabel.BackgroundColor3 = Color3.new(0, 0, 0)
MoonHealthMinLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthMinLabel.Position = UDim2.new(0, 5, 0, 275)
MoonHealthMinLabel.Size = UDim2.new(0, 40, 0, 20)
MoonHealthMinLabel.Font = Enum.Font.Fantasy
MoonHealthMinLabel.TextColor3 = Color3.new(1, 1, 1)
MoonHealthMinLabel.Text = "Low"
MoonHealthMinLabel.TextSize = 17
MoonHealthMinLabel.TextWrapped = true

MoonHealthMin.Name = "MoonHealthMin"
MoonHealthMin.Parent = FarmFrame
MoonHealthMin.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
MoonHealthMin.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthMin.Position = UDim2.new(0, 46, 0, 275)
MoonHealthMin.Size = UDim2.new(0, 89, 0, 20)
MoonHealthMin.Font = Enum.Font.Fantasy
MoonHealthMin.TextColor3 = Color3.new(1, 1, 1)
MoonHealthMin.Text = "10e04"
MoonHealthMin.TextSize = 17
MoonHealthMin.TextWrapped = true

MoonHealthMaxLabel.Name = "MoonHealthMaxLabel"
MoonHealthMaxLabel.Parent = FarmFrame
MoonHealthMaxLabel.BackgroundColor3 = Color3.new(0, 0, 0)
MoonHealthMaxLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthMaxLabel.Position = UDim2.new(0, 5, 0, 296)
MoonHealthMaxLabel.Size = UDim2.new(0, 40, 0, 20)
MoonHealthMaxLabel.Font = Enum.Font.Fantasy
MoonHealthMaxLabel.TextColor3 = Color3.new(1, 1, 1)
MoonHealthMaxLabel.Text = "High"
MoonHealthMaxLabel.TextSize = 17
MoonHealthMaxLabel.TextWrapped = true

MoonHealthMax.Name = "MoonHealthMax"
MoonHealthMax.Parent = FarmFrame
MoonHealthMax.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
MoonHealthMax.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthMax.Position = UDim2.new(0, 46, 0, 296)
MoonHealthMax.Size = UDim2.new(0, 89, 0, 20)
MoonHealthMax.Font = Enum.Font.Fantasy
MoonHealthMax.TextColor3 = Color3.new(1, 1, 1)
MoonHealthMax.Text = "60e06"
MoonHealthMax.TextSize = 17
MoonHealthMax.TextWrapped = true

StartFarmingMoon.Name = "StartFarmingMoon"
StartFarmingMoon.Parent = FarmFrame
StartFarmingMoon.BackgroundColor3 = Color3.new(0.3, 0, 0)
StartFarmingMoon.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartFarmingMoon.Position = UDim2.new(0, 5, 0, 321)
StartFarmingMoon.Size = UDim2.new(0, 130, 0, 25)
StartFarmingMoon.Font = Enum.Font.Fantasy
StartFarmingMoon.TextColor3 = Color3.new(1, 1, 1)
StartFarmingMoon.Text = "Mine Moon&Festive: OFF"
StartFarmingMoon.TextSize = 17
StartFarmingMoon.TextWrapped = true

-- Close GUI --
ClosePS.MouseButton1Down:connect(function()
	MainGUI:destroy()
end)

BuyScreen.MouseButton1Click:connect(function()
	MainFrame.Visible = false
	BuyScreenFrame.Visible = true
end)

Locations.MouseButton1Click:connect(function()
	MainFrame.Visible = true
	BuyScreenFrame.Visible = false
end)

FarmCoins.MouseButton1Click:connect(function()
	MainFrame.Visible = false
	FarmFrame.Visible = true
end)

Locations2.MouseButton1Click:connect(function()
	MainFrame.Visible = true
	FarmFrame.Visible = false
end)

TeleportScreen.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.PlayerGui.Teleport.Enabled = true
end)

-- Farm --

StartFarming.MouseButton1Click:connect(function()
	if not FarmStart then
		FarmArea = "all"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarming.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarming.Text = "Mine ALL: ON"
		PetTable()
		FarmStart = true
	else
		FarmStart = false
		FarmArea = "none"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0, 0)
		StartFarming.BackgroundColor3 = Color3.new(0.3, 0, 0)
		StartFarming.Text = "Mine ALL: OFF"
	end
end)

StartFarmingEarth.MouseButton1Click:connect(function()
	if not FarmStart then
		FarmArea = "earth"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarmingEarth.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarmingEarth.Text = "Mine Earth: ON"
		PetTable()
		FarmStart = true
	else
		FarmStart = false
		FarmArea = "none"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0, 0)
		StartFarmingEarth.BackgroundColor3 = Color3.new(0.3, 0, 0)
		StartFarmingEarth.Text = "Mine Earth: OFF"
	end
end)

StartFarmingMoon.MouseButton1Click:connect(function()
	if not FarmStart then
		FarmArea = "moon"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarmingMoon.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarmingMoon.Text = "Mine Moon: ON"
		PetTable()
		FarmStart = true
	else
		FarmStart = false
		FarmArea = "none"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0, 0)
		StartFarmingMoon.BackgroundColor3 = Color3.new(0.3, 0, 0)
		StartFarmingMoon.Text = "Mine Moon: OFF"
	end
end)

function Mine(Coin)
    while FarmStart and (Coin:FindFirstChild("Health") ~= nil) and (Coin:FindFirstChild("Health").Value > 0)  do
		wait(0.1)
		for PetNumber,_ in pairs(petTable) do
			workspace["__REMOTES"]["Game"]["Coins"]:FireServer("Mine",Coin.Name,petTable[PetNumber]["LEVEL"],petTable[PetNumber]["ID"])
		end
	end
end

spawn(function()
	while true do
		while FarmStart do
			for _,Coin in next, workspace["__THINGS"].Coins:GetChildren() do
				if (done ~= Coin) then
					if (FarmArea == "all") then
						if workspace.__THINGS.Coins:FindFirstChild(Coin.Name) then
							if Coin.Health.Value > tonumber(AllHealthMin.Text) and Coin.Health.Value < tonumber(AllHealthMax.Text) then
								Mine(Coin)
							end
						end
					elseif (FarmArea == "earth") then
						if workspace.__THINGS.Coins:FindFirstChild(Coin.Name) then
							if Coin.Position.Y < 100 then
								if Coin.Health.Value > tonumber(EarthHealthMin.Text) and Coin.Health.Value < tonumber(EarthHealthMax.Text) then
									Mine(Coin)
								end
							end
						end
					elseif (FarmArea == "moon") then
						if workspace.__THINGS.Coins:FindFirstChild(Coin.Name) then
							if Coin.Position.Y > 100 then
								if Coin.Health.Value > tonumber(MoonHealthMin.Text) and Coin.Health.Value < tonumber(MoonHealthMax.Text) then
									Mine(Coin)
								end
							end
						end
					else
					end
				end
			end
			wait()
		end
		wait()
	end
end)

WalkSpeed.MouseButton1Click:connect(function()
	if WalkNumber == "1" then
		WalkSpeed.BackgroundColor3 = Color3.new(0, 0, 0.5)
		WalkSpeed.Text = "Walk:2"
		WalkNumber = "2"
		Walk = 30
	elseif WalkNumber == "2" then
		WalkSpeed.BackgroundColor3 = Color3.new(0.5, 0, 0)
		WalkSpeed.Text = "Walk:3"
		WalkNumber = "3"
		Walk = 80
	elseif WalkNumber == "3" then
		WalkSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
		WalkSpeed.Text = "Walk:1"
		WalkNumber = "1"
		Walk = 16
	else
		WalkSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
		WalkSpeed.Text = "Walk:1"
		WalkNumber = "1"
		Walk = 16
	end
	player = game.Players.LocalPlayer
	player.Character.Humanoid.WalkSpeed = Walk
end)

JumpPower.MouseButton1Click:connect(function()
	if JumpNumber == "1" then
		JumpPower.BackgroundColor3 = Color3.new(0, 0, 0.5)
		JumpPower.Text = "Jump:2"
		JumpNumber = "2"
		Jump = 150
	elseif JumpNumber == "2" then
		JumpPower.BackgroundColor3 = Color3.new(0.5, 0, 0)
		JumpPower.Text = "Jump:3"
		JumpNumber = "3"
		Jump = 400
	elseif JumpNumber == "3" then
		JumpPower.BackgroundColor3 = Color3.new(0, 0, 0)
		JumpPower.Text = "Jump:1"
		JumpNumber = "1"
		Jump = 50
	else
		JumpPower.BackgroundColor3 = Color3.new(0, 0, 0)
		JumpPower.Text = "Jump:1"
		JumpNumber = "1"
		Jump = 50
	end
	player = game.Players.LocalPlayer
	player.Character.Humanoid.JumpPower = Jump
end)

-- Buy Eggs and Hats --

BuyPetGo.MouseButton1Click:connect(function()
	for i = 1, tonumber(BuyPetAmount2.Text) do 
		if tonumber(BuyPetAmount2.Text) == 0 then break end
		game:GetService("Workspace")["__REMOTES"]["Game"].Shop:InvokeServer("Buy", "Eggs", "Tier " ..BuyPetTier2.Text)
		wait()
	end
end)

BuyHatGo.MouseButton1Click:connect(function()
	for i = 1, tonumber(BuyHatAmount2.Text) do 
		if tonumber(BuyHatAmount2.Text) == 0 then break end
		if BuyHatTier2.Text:lower() == "golden" then
			game:GetService("Workspace")["__REMOTES"]["Game"].Shop:InvokeServer("Buy", "Presents", "Golden")
		else
			game:GetService("Workspace")["__REMOTES"]["Game"].Shop:InvokeServer("Buy", "Presents", "Tier " ..BuyHatTier2.Text)
		end
		wait()
	end
end)

-- TP to locations --
Spawn.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(526, -36.292, 909)
end)

Shop.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(647.35, -33.6, 890.23)
end)

Area2.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13, -37, 885)
end)

Area3.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-364, -37, 885)
end)

Area4.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-760, -37, 885)
end)

Area5.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1160, -37, 885)
end)

Area6.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1500, -37, 885)
end)

Rocket.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1828, -37, 897)
end)

Area8.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(616, 146, -1720)
end)

Area9.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(527, 145, -1762)
end)

Area10.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(124.8, 145, -1718)
end)

CandyLand.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13.7, 145, -1449.8)
end)

CyborgLand.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-283.5, 145, -1704.4)
end)
