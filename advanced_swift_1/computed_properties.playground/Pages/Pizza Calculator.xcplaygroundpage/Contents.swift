import Foundation

var pizzaInInches:Int = 12
{
    willSet
    {
        print(newValue)
    }
    didSet
    {
        if pizzaInInches > 18
        {
            print("Set inches of \(oldValue) is too large, setting pizzaInInches to 18")
            pizzaInInches = 18
        }
    }
}

pizzaInInches = 33
print(pizzaInInches)

var numberOfPeople:Int = 6
let slicesPerPerson:Int = 3

var numberOfSlices:Int
{
    get
    {
        return pizzaInInches - 4
    }
}

var numberOfPizzas:Int
{
    get
    {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set
    {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizzas = 5
print(numberOfPeople)
