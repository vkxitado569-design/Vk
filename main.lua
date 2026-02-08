-- VK HUB FRUITS v2.0 - SCRIPT PREMIUM
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()

-- INTERFACE VK HUB FRUITS - QUADRADO PRETO
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

spawn(function()
    wait(1.5)
    
    -- Encontrar e renomear a GUI do GravityHub para VK Hub Fruits
    for _, gui in pairs(PlayerGui:GetChildren()) do
        if gui.Name:find("Gravity") or gui.Name:find("gravity") then
            gui.Name = "VKHUB_FRUITS"
        end
        
        for _, frame in pairs(gui:GetDescendants()) do
            if frame:IsA("TextLabel") and frame.Text:find("Gravity") then
                frame.Text = frame.Text:gsub("Gravity", "VK HUB")
                frame.TextColor3 = Color3.fromRGB(255, 255, 255)
            elseif frame:IsA("TextLabel") and frame.Text:find("gravity") then
                frame.Text = frame.Text:gsub("gravity", "VK HUB")
            end
            
            if frame:IsA("ImageLabel") then
                frame.ImageTransparency = 1 -- Remove todas as logos
            end
        end
    end
    
    -- Criar nova logo quadrada preta VK Hub Fruits
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "VKHubLogo"
    ScreenGui.Parent = PlayerGui
    ScreenGui.ResetOnSpawn = false
    
    local Frame = Instance.new("Frame")
    Frame.Name = "VKFrame"
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Quadrado PRETO
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.5, -150, 0.15, 0)
    Frame.Size = UDim2.new(0, 300, 0, 70)
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 8)
    UICorner.Parent = Frame
    
    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(138, 43, 226) -- Borda roxa
    Stroke.Thickness = 2
    Stroke.Parent = Frame
    
    local Title = Instance.new("TextLabel")
    Title.Name = "VKTitle"
    Title.Parent = Frame
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, 0, 0.6, 0)
    Title.Position = UDim2.new(0, 0, 0, 0)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "VK HUB FRUITS"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextStrokeTransparency = 0
    Title.TextStrokeColor3 = Color3.fromRGB(138, 43, 226)
    
    local Subtitle = Instance.new("TextLabel")
    Subtitle.Name = "Subtitle"
    Subtitle.Parent = Frame
    Subtitle.BackgroundTransparency = 1
    Subtitle.Size = UDim2.new(1, 0, 0.4, 0)
    Subtitle.Position = UDim2.new(0, 0, 0.6, 0)
    Subtitle.Font = Enum.Font.Gotham
    Subtitle.Text = "v2.0 - Premium Loaded"
    Subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
    Subtitle.TextScaled = true
    
    -- Animação
    Frame.Size = UDim2.new(0, 0, 0, 0)
    local tweenIn = TweenService:Create(Frame, TweenInfo.new(0.7, Enum.EasingStyle.Back), {Size = UDim2.new(0, 300, 0, 70)})
    tweenIn:Play()
    
    tweenIn.Completed:Wait()
    wait(2.5)
    
    local tweenOut = TweenService:Create(Frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {
        Size = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1
    })
    tweenOut:Play()
    tweenOut.Completed:Wait()
    ScreenGui:Destroy()
end)

print("🟣 VK HUB FRUITS v2.0 - Carregado com sucesso!")
print("📱 Menu agora é VK HUB FRUITS - Sem logos antigas!")
