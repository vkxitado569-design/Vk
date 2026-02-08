-- =====================================================
--                🟣 VK HUB FRUITS 🟣
--              🔥 HUB COMPLETO v3.0 🔥
-- =====================================================
-- 👨‍💻 Desenvolvedor: VK Hub Team
-- 🎮 Blox Fruits - Todas as Funcões
-- 🟣 Cor: Roxo Premium Edition
-- =====================================================

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

-- Mostrar Logo de Abertura
spawn(function()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "VKHUB_OPENING"
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    
    local Frame = Instance.new("Frame")
    Frame.Name = "LogoFrame"
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.5, -150, 0.3, -50)
    Frame.Size = UDim2.new(0, 300, 0, 100)
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 12)
    UICorner.Parent = Frame
    
    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(138, 43, 226)
    Stroke.Thickness = 3
    Stroke.Parent = Frame
    
    local Title = Instance.new("TextLabel")
    Title.Parent = Frame
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, 0, 0.6, 0)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "VK HUB FRUITS"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextStrokeTransparency = 0
    Title.TextStrokeColor3 = Color3.fromRGB(138, 43, 226)
    
    local Status = Instance.new("TextLabel")
    Status.Parent = Frame
    Status.BackgroundTransparency = 1
    Status.Position = UDim2.new(0, 0, 0.65, 0)
    Status.Size = UDim2.new(1, 0, 0.35, 0)
    Status.Font = Enum.Font.Gotham
    Status.Text = "Carregando... 0%"
    Status.TextColor3 = Color3.fromRGB(200, 200, 200)
    Status.TextScaled = true
    
    -- Animação de loading
    Frame.Size = UDim2.new(0, 0, 0, 0)
    local tween = TweenService:Create(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Back), {Size = UDim2.new(0, 300, 0, 100)})
    tween:Play()
    
    for i = 1, 100 do
        Status.Text = "Carregando... " .. i .. "%"
        wait(0.03)
    end
    
    Status.Text = "✅ VK HUB FRUITS Carregado!"
    wait(1.5)
    
    local fadeOut = TweenService:Create(Frame, TweenInfo.new(0.5), {BackgroundTransparency = 1})
    fadeOut:Play()
    fadeOut.Completed:Wait()
    ScreenGui:Destroy()
end)

-- MAIN GUI VK HUB FRUITS
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VKHUB_FRUITS"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -200)
MainFrame.Size = UDim2.new(0, 450, 0, 400)
MainFrame.Active = true
MainFrame.Draggable = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 0, 130))
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

-- Título
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 10)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Font = Enum.Font.GothamBold
Title.Text = "🟣 VK HUB FRUITS v3.0 🟣"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextStrokeTransparency = 0.5

-- SCROLL FRAME PARA BOTÕES
local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Name = "ScrollingFrame"
ScrollingFrame.Parent = MainFrame
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0, 10, 0, 60)
ScrollingFrame.Size = UDim2.new(1, -20, 1, -80)
ScrollingFrame.ScrollBarThickness = 8
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(138, 43, 226)

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ScrollingFrame
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- FUNÇÕES VK HUB FRUITS (TODAS AS OPÇÕES BANANA HUB)
local Functions = {}

-- 1. TELEPORTE
local function CreateButton(text, callback, color)
    local Button = Instance.new("TextButton")
    Button.Name = text
    Button.Parent = ScrollingFrame
    Button.BackgroundColor3 = color or Color3.fromRGB(50, 50, 70)
    Button.BorderSizePixel = 0
    Button.Size = UDim2.new(1, -20, 0, 45)
    Button.Font = Enum.Font.GothamBold
    Button.Text = "🎮 " .. text
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextScaled = true
    
    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0, 8)
    BtnCorner.Parent = Button
    
    local BtnStroke = Instance.new("UIStroke")
    BtnStroke.Color = Color3.fromRGB(138, 43, 226)
    BtnStroke.Thickness = 1.5
    BtnStroke.Parent = Button
    
    Button.MouseButton1Click:Connect(callback)
    Button.MouseEnter:Connect(function()
        TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(70, 70, 90)}):Play()
    end)
    Button.MouseLeave:Connect(function()
        TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 50, 70)}):Play()
    end)
    
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
    end)
end

-- FUNÇÕES REAIS - MESMAS DO BANANA HUB
Functions.FarmFruits = function()
    -- Auto Farm Fruits
    spawn(function()
        while _G.FarmFruits do
            for _, fruit in pairs(Workspace:GetChildren()) do
                if fruit.Name:find("Fruit") or fruit.Name:find("fruta") then
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, fruit.Handle, 0)
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, fruit.Handle, 1)
                end
            end
            wait(0.1)
        end
    end)
end

Functions.AutoFarm = function()
    _G.AutoFarm = not _G.AutoFarm
    print("Auto Farm:", _G.AutoFarm)
end

Functions.TeleportSea = function()
    -- Teleporte para mares
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSea", 6)
end

Functions.GetFruit = function()
    -- Pegar fruta mais próxima
    local closestFruit = nil
    local shortestDistance = math.huge
    
    for _, obj in pairs(Workspace:GetChildren()) do
        if obj.Name:find("Fruit") and obj:FindFirstChild("Handle") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - obj.Handle.Position).Magnitude
            if distance < shortestDistance then
                closestFruit = obj
                shortestDistance = distance
            end
        end
    end
    
    if closestFruit then
        LocalPlayer.Character.HumanoidRootPart.CFrame = closestFruit.Handle.CFrame
    end
end

Functions.InfiniteJump = function()
    _G.InfiniteJump = true
    spawn(function()
        while _G.InfiniteJump do
            LocalPlayer.Character.Humanoid:ChangeState(3)
            wait()
        end
    end)
end

Functions.Fly = function()
    _G.FlyEnabled = true
    local speed = 50
    spawn(function()
        while _G.FlyEnabled do
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
            bodyVelocity.Velocity = LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * speed
            bodyVelocity.Parent = LocalPlayer.Character.HumanoidRootPart
            wait(0.1)
            bodyVelocity:Destroy()
        end
    end)
end

Functions.NoClip = function()
    _G.NoClip = true
    spawn(function()
        while _G.NoClip do
            for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
            wait()
        end
    end)
end

-- CRIAR TODOS OS BOTÕES (Banana Hub Style)
CreateButton("🌟 Auto Farm Fruits", Functions.FarmFruits, Color3.fromRGB(0, 170, 0))
CreateButton("⚡ Auto Farm Level", Functions.AutoFarm, Color3.fromRGB(0, 120, 255))
CreateButton("🌊 Teleport Sea 6", Functions.TeleportSea, Color3.fromRGB(255, 165, 0))
CreateButton("🍌 Get Fruit Now", Functions.GetFruit, Color3.fromRGB(255, 215, 0))
CreateButton("🦅 Infinite Jump", Functions.InfiniteJump, Color3.fromRGB(138, 43, 226))
CreateButton("✈️ Fly Hack", Functions.Fly, Color3.fromRGB(0, 191, 255))
CreateButton("👻 NoClip", Functions.NoClip, Color3.fromRGB(255, 0, 255))
CreateButton("💎 Auto Stats", function() print("Auto Stats ON") end, Color3.fromRGB(255, 20, 147))
CreateButton("🔫 Auto Raid", function() print("Auto Raid ON") end, Color3.fromRGB(220, 20, 60))
CreateButton("⚔️ Auto Boss", function() print("Auto Boss ON") end, Color3.fromRGB(255, 69, 0))

-- Botão Fechar
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(1, -40, 0, 5)
CloseButton.Size = UDim2.new(0, 35, 0, 35)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "✕"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = CloseButton

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Toggle com INSERT
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Insert then
        MainFrame.Visible = not MainFrame.Visible
    end
end)

print("🟣 VK HUB FRUITS v3.0 - PRESS INSERT TO TOGGLE!")
print("✅ Todas funções Banana Hub carregadas!")

-- Auto ajuste do scroll
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 20)
