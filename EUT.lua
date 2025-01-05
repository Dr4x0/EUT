local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Everything Upgrade Tree",
    LoadingTitle = "EUT Menu",
    LoadingSubtitle = "By Dr4x0z",
    Theme = "DarkBlue"
})

local UserInputService = game:GetService("UserInputService")

UserInputService.MouseIconEnabled = true


--||--Variables--||--
_G.AAlpha = false
_G.ABlackHole = false

_G.GetFunky = false

--||--Functions--||--
local function AAlphaFunction()
    while _G.AAlpha == true do
        game:GetService("ReplicatedStorage").remotes.upgrade:FireServer("2b_3", true)
		game:GetService("ReplicatedStorage").remotes.upgrade:FireServer("5b_3", true)
		game:GetService("ReplicatedStorage").remotes.upgrade:FireServer("8b", true)
        wait(0.5)
    end
end    

local function ABlackHoleFunction()
    while _G.AAlpha == true do
        for i = 1, 12 do 
            game:GetService("ReplicatedStorage").remotes.upgrade:FireServer(i .. "bh", true)
        end
        wait(0.5)
    end
end   



local function GetFunkyFunction()
    while _G.GetFunky == true do
        for i = 1, 34 do
            game:GetService("ReplicatedStorage").remotes.upgrade:FireServer(i, true)
        end
        game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("RightSide")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("LeftSide")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("Materialize")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("Materialize2")
        game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("Materialize3")
        game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("Materialize1b")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain2")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain3")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain4")
        game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain5")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain1b")
        wait(0.5)
    end
end

--||--Window--||--
local Main = Window:CreateTab("Menu", "home")
local Section = Main:CreateSection("Automate")

local Toggle = Main:CreateToggle({
    Name = "Automate Alpha",
    CurrentValue = false,
    Callback = function(Value)
        _G.AAlpha = Value
        AAlphaFunction()
    end,
})


local Toggle = Main:CreateToggle({
    Name = "Automate Black Hole",
    CurrentValue = false,
    Callback = function(Value)
        _G.ABlackHole = Value
        ABlackHoleFunction()
    end,
})

local Section = Main:CreateSection("Challenges")

local Toggle = Main:CreateToggle({
    Name = "Get Funky",
    CurrentValue = false,
    Callback = function(Value)
        _G.GetFunky = Value
        GetFunkyFunction()
    end,
})

local List = ""
for _, item in ipairs(game:GetService("ReplicatedStorage").locked_upgs:GetChildren()) do
    List = List .. " + " .. item.Name
end

local Paragraph = Main:CreateParagraph({
    Title = "Paragraph Example",
    Content = List
})