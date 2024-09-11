// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int
{
    return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int
{
    return layers.count * 2
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double)
{
    var noodles = 0
    var sauce = 0
    for layer in layers {
        if layer == "noodles" {
            noodles += 1
        }
        if layer == "sauce" {
            sauce += 1
        }
    }
    
    return (noodles: noodles * 3, sauce: Double(sauce) * 0.2)
}

// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double) )
{
    amount.sauce *= 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool
{
    func count(type: String) -> Int
    {
        var count = 0
        for layer in layers {
            if layer == type {
                count += 1
            }
        }
        return count
    }
    
    func countMozzarella() -> Int
    {
        count(type: "mozzarella")
    }
    func countRicotta() -> Int
    {
        count(type: "ricotta")
    }
    func countBechamel() -> Int
    {
        count(type: "béchamel")
    }
    func countMeat() -> Int{
        count(type: "meat")
    }
    func countSauce() -> Int
    {
        count(type: "sauce")
    }
    
    return (countMozzarella() + countRicotta() + countBechamel()) <= (countMeat() + countSauce())
    
}
