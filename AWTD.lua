local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "PlagueHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
    Name = "Tab 1",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Adicionando a lista de itens e o botão correspondente
local items = {
    "Spirit",
    "Secret Crystal",
    "Legend Shard",
    "Quincy Token",
    "Blue Orb",
    "Green Orb",
    "Purple Orb",
    "Red Orb",
    "Yellow Orb",
    "Idol Ribbin",
    "Shadow Realm Orb",
    "Calamity Orb",
    "Demonic Heart",
    "Ancient Orb",
    "Demon Blood",
    "Evil Fruit",
    "Hollow Shard",
    "Mask",
    "Ninja Scroll",
    "Regeneration Bean",
    "Stone Mask",
    "Cursed Orb",
    "Flame Fruit",
    "Grand Token",
    "God Ear Ring",
    "Idol Postcard",
    "Pure Water",
    "Red Jewel",
    "Demon Bullet",
    "Wisteria",
    "Straw Hat",
    "Dark Spirit",
    "Quincy Core",
    "Broken Heavenly Spear",
    "Blood Tear",
    "Abyss Fragment",
    "Freezing Ice",
    "Christmas Bell",
    "Kriezer Medal",
    "Sombra Medal",
    "Chaos Medal",
    "Peace Medal",
    "Arrancar Medal",
    "Ado Medal",
    "Mystical Crystal",
    "Crimson Cloud Medal",
    -- Adicione outros itens conforme necessário
}

local quantidadeInput = Instance.new("TextBox")
quantidadeInput.PlaceholderText = "Quantidade para Todos os Itens"
quantidadeInput.Size = UDim2.new(0, 200, 0, 25)

Tab:AddTextbox({
    Name = "Quantidade para Todos os Itens",
    Default = "99999999",
    Callback = function(Value)
        print(Value)
    end
})

Tab:AddButton({
    Name = "Trocar Todos",
    Callback = function()
        local quantidadeSelecionada = tonumber(quantidadeInput.Text) or 99999999  -- Padrão para 10 mil se não for um número válido

        local rr = game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("TokenExchange")

        for _, item in ipairs(items) do
            local args = {
                [1] = item,
                [2] = quantidadeSelecionada
            }

            rr:InvokeServer(unpack(args))
            wait(1)
        end
    end    
})

OrionLib:Init()
