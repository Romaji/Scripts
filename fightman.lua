local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Fightman Simulator! Made By NAYPRAMX#0562", "BloodTheme")
local Tab = Window:NewTab("Auto-Farm")
local Section = Tab:NewSection("AutoFarm")
Eggs = {}
for i,v in pairs(game:GetService("Workspace").Gloves:GetChildren()) do
    table.insert(Eggs,v.Name)
end
Section:NewDropdown("Collect Glove", "DropdownInf", {"1", "2", "3" ,"4" ,"5" ,"6" }, function(currentOption)
    hnumber = currentOption
end)
Section:NewDropdown("Select Glove", "DropdownInf", Eggs, function(currentOption)
    Glovese = currentOption
end)
Section:NewToggle("Auto-Farm Gloves", "ToggleInfo", function(state)
    _G.x = state
    
while _G.x do wait(1)
for i,v in pairs(game:GetService("Workspace").Gloves:GetChildren()) do
    if v.Name == Glovese then
        if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.EquippedGlove.Visible == true then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.UIAnchor.CFrame * CFrame.new(70,0,0)
wait(.1)
game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, game)
wait(.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, game)
else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.UIAnchor.CFrame
        wait(.1)
        for i = 1,hnumber do wait()
        fireproximityprompt(v.UIAnchor.GlovePrompt,1)
        end
end
end
end
end
end)
Section:NewToggle("Auto-Farm Trains", "ToggleInfo", function(state)
    _G.train = state
    
while _G.train do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-48.261867523193, 4.6563897132874, 37.939655303955)
fireproximityprompt(game:GetService("Workspace").Bags[1].TrainingPrompt,1)
end
end)

Section:NewButton("Glove Name [OPEN GUI]", "ButtonInfo", function()

local Gui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local X = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

Gui.Name = "Gui"
Gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Gui
Frame.BackgroundColor3 = Color3.fromRGB(68, 255, 0)
Frame.Position = UDim2.new(0.0170523729, 0, 0.0631704405, 0)
Frame.Size = UDim2.new(0.116666667, 0, 0.177592367, 0)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Position = UDim2.new(0.0491071418, 0, 0.328859061, 0)
TextLabel.Size = UDim2.new(0.892857134, 0, 0.335570484, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Name is : "
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

UICorner_2.Parent = TextLabel

X.Name = "X"
X.Parent = Gui
X.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
X.Position = UDim2.new(0.109895833, 0, 0.0631704405, 0)
X.Size = UDim2.new(0.0234375, 0, 0.0405244343, 0)
X.Font = Enum.Font.SourceSans
X.Text = ""
X.TextColor3 = Color3.fromRGB(0, 0, 0)
X.TextSize = 14.000

UICorner_3.Parent = X

-- Scripts:

local function TROD_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	while wait() do
		pcall(function()
			local onichan = game:GetService("Players").LocalPlayer.GameVariables.CurrentGloveName.Value
			script.Parent.Text = "Name is : "..onichan
		end)
	end
end
coroutine.wrap(TROD_fake_script)()
local function OCSB_fake_script() -- X.LocalScript 
	local script = Instance.new('LocalScript', X)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(OCSB_fake_script)()
end)
local Tab = Window:NewTab("Auto-Eggs")
local Section = Tab:NewSection("Auto-Eggs")
Eggss = {}
for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    table.insert(Eggss,v.Name)
end
Section:NewDropdown("Select Eggs", "DropdownInf", Eggss, function(currentOption)
    Eggss = currentOption
end)
Section:NewToggle("Auto-Open Egg", "ToggleInfo", function(state)
    _G.egg = state
    while _G.egg do wait()
local args = {
    [1] = Eggss,
    [2] = "Triple"
}

game:GetService("ReplicatedStorage").Functions.OpenEgg:InvokeServer(unpack(args))
end
end)
Section:NewButton("Tp to Egg", "ToggleInfo", function()
    for i,v1 in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
        if v1.Name == Eggss then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.UIAnchor.CFrame
end
end
end)
local Tab = Window:NewTab("Credit")
local Section = Tab:NewSection("Credit")
Section:NewButton("NAYPRAMX#0562", "ToggleInfo", function()
    setclipboard("NAYPRAMX#0562")
end)
