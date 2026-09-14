local module = require("module")
local AnimalManager = require("AnimalPresets/AnimalManager")
local CatPreset = require("AnimalPresets/Cat")


local cat: module.Animal = AnimalManager.CreateAnimal("Cat", "Whiskers", 3)
local dog: module.Animal = AnimalManager.CreateAnimal("Dog", "Morpheus", 5)
print(cat:CreateNoise())

print(module.GetAge(cat))

print(dog:CreateNoise())
print(dog:GetAge())