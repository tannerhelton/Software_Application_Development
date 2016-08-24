//Activity 1
print("Hello, world!")

//Activity 2
let explicitFloat: Float = 4
print(explicitFloat)

//Activity 3
let label = "The width is"
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

//Activity 4
let float: Float = 4.0/3.5
let string = "Tanner 4.0 / 3.5 = \(float)"

//Activity 5
var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "No name provided"
}

//Activity 6
let vegetable = "red pepper"
switch(vegetable) {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}
//Switch must be exhaustive, consider adding a default clause

//Activity 7
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var type = ""
var largest = 0
for (kind, numbers) in interestingNumbers{
    for number in numbers {
        if number > largest {
            largest = number
            type = kind
        }
    }
}
print("Type: " + type + " -- Largest: " + String(largest))



















