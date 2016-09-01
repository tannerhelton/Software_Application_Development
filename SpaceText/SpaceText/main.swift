import Foundation

var numberOfPlanets: Int = 8
var diameterOfEarth: Float = 24859.82 //in miles pole to pole

print("Welcome to our solar system!")
print("There are \(numberOfPlanets) planets to explore!")
print("You are currently on Earth, which has the circumference of \(diameterOfEarth) miles.")

print("What is your name?")
let name = getln()
print("Nice to meet you \(name). My name is Eliza, I'm a old friend of Siri.")

print("Let's go on an adventure")
print("Shall I randomly choose a planet for you to visit? (Y or N)")
var decision = ""

while !(decision == "Y" || decision == "N" || decision == "Cookies!") {
    decision = getln()
    if (decision == "Y") {
        print("Ok traveling to...")
        //TODO travel to random planet
    } else if (decision == "N"){
        print("Ok name the planet you would like to visit...")
        //TODO let the user select a planet to visit
    } else if (decision == "Cookies!") {
        print("Cookies! Is not a valid response. Please respond with Y for yes or N for no")
    } else {
        print("Sorry I didn't get that")
    }
}

//Assignment
let x = 5

//Comparison
x == 5 // true

//Assignment and comparison
let y = x == 5

