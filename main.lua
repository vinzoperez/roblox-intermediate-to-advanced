local module = require("module")

local noiseTable = {
    ["Cat"] = "Meow",
    ["Dog"] = "Woof" ,
    ["Bird"] = "Caaaa Cawww"
}

local cat: module.Animal = module.CreateAnimal("Cat", "Whiskers", 3, noiseTable.Cat)
local dog: module.Animal = module.CreateAnimal("Dog", "Morpheus", 1, noiseTable.Dog)
local bird: module.Animal = module.CreateAnimal("Bird", "Seagull", 2, noiseTable.Bird)

print(cat:CreateNoise())

print(module.GetAge(cat))
