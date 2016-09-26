//
//  main.swift
//  Swift 3
//
//  Created by Tanner Helton on 9/25/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import Foundation

print("Hello, World!")

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

print("Shopping List: \(shoppingList)")

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]

print("Occupations: \(occupations)")

let emptyArray = [String]()

let emptyDictionary = [String: Float]()

//Teamscore activity page 9

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

//Optional Strings activity page 10

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "Tanner Helton"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

//Switch activity page 12

let vegetable = "red pepper"

switch vegetable {

case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
