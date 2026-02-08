-- =====================================================
--                🟣 VK HUB FRUITS 🟣
--              🔥 HUB PREMIUM ROXO 🔥
-- =====================================================
-- 👨‍💻 Desenvolvedor: VK Hub Team
-- 🎮 Script: VK Hub Fruits v2.0
-- 🟣 Cor: Roxo Premium Edition
-- =====================================================

loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()

-- Logo e Interface Roxa Personalizada
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Criando Overlay Roxo
spawn(function()
    wait(1)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "VKHUB_FRUITS_ROXO"
    ScreenGui.Parent = PlayerGui
    ScreenGui.ResetOnSpawn = false
    
    local Frame = Instance.new("Frame")
    Frame.Name = "LogoFrame"
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(75, 0, 130)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.5, -125, 0.1, 0)
    Frame.Size = UDim2.new(0, 250, 0, 80)
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 12)
    UICorner.Parent = Frame
    
    local UIGradient = Instance.new("UIGradient")
    UIGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(75, 0, 130)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(186, 85, 211))
    }
    UIGradient.Rotation = 45
    UIGradient.Parent = Frame
    
    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Parent = Frame
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "🟣 VK HUB FRUITS 🟣"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextStrokeTransparency = 0
    
    local Subtitle = Instance.new("TextLabel")
    Subtitle.Name = "Subtitle"
    Subtitle.Parent = Frame
    Subtitle.BackgroundTransparency = 1
    Subtitle.Position = UDim2.new(0, 0, 0.6, 0)
    Subtitle.Size = UDim2.new(1, 0, 0.4, 0)
    Subtitle.Font = Enum.Font.Gotham
    Subtitle.Text = "✅ Carregado com sucesso!"
    Subtitle.TextColor3 = Color3.fromRGB(200, 200, 255)
    Subtitle.TextScaled = true
    
    -- Animação de fade in
    Frame.Size = UDim2.new(0, 0, 0, 0)
    local tween = game:GetService("TweenService"):Create(
        Frame,
        TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Size = UDim2.new(0, 250, 0, 80)}
    )
    tween:Play()
    
    wait(3)
    local fadeOut = game:GetService("TweenService"):Create(
        Frame,
        TweenInfo.new(0.5, Enum.EasingStyle.Quad),
        {BackgroundTransparency = 1}
    )
    fadeOut:Play()
    fadeOut.Completed:Wait()
    ScreenGui:Destroy()
end)

print("🟣 VK HUB FRUITS carregado com sucesso! 🎮")
