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
}

local rr = game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("TokenExchange")

for _, item in ipairs(items) do
    local args = {
        [1] = item,
        [2] = 10000000
    }

    rr:InvokeServer(unpack(args))
    wait(1)
end
