--!strict

local module = {}
module.__index = module

export type AnimalData = {
    Type: "cat" | "dog",
    Name: string ,
    Age: number,
    Noise: string
}

export type Animal = AnimalData & {
    CreateNoise: (self: Animal) -> string,
    GetAge: (self: Animal) -> number,
    GetName: (self: Animal) -> string
}


function module.CreateAnimal(animalType: "Cat" | "Dog" ,name: string, age: number, noise: string): Animal
    if not name then return end
    if not age then return end
    local self = setmetatable({
        Type = string.lower(animalType) :: "cat" | "dog",
        Name = name,
        Age = age,
        Noise = noise,
    }, module)
    return self
end

function module.CreateNoise(self: Animal)
    return self.Noise
end

function module.GetAge(self: Animal) : number
    return self.Age
end
function module.GetName(self: Animal) : number
    return self.Name
end




return module


