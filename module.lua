--!strict

local module = {}
module.__index = module

export type AnimalData = {
    Name: string ,
    Age: number,
    Noise: string
}

export type Animal = AnimalData & {
    CreateNoise: (self: Animal) -> string,
    GetAge: (self: Animal) -> number,
    GetName: (self: Animal) -> string
}


function module.CreateAnimal(data: AnimalData): Animal
    if not data.Name then return end
    if not data.Age then return end
    local self = setmetatable({
        Name = data.Name,
        Age = data.Age,
        Noise = data.Noise,
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


