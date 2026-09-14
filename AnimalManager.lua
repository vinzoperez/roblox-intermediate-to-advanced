--!strict

local Animal = require("../module")

local AnimalManager = {}

function AnimalManager.GetPreset(presetName: string)
    local preset = require(presetName)

    return preset
end

function AnimalManager.CreateAnimal(
    presetName: string,
    name: string?,
    age: number?
): Animal.Animal
    local preset = AnimalManager.GetPreset(presetName)

    local data = {
        Name = name or preset.Name,
        Age = age or preset.Age,
        Noise = preset.Noise,
    }

    return Animal.CreateAnimal(data)
end

return AnimalManager
