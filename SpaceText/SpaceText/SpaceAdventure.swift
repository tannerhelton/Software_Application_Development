//
//  SpaceAdventure.swift
//  SpaceText
//
//  Created by Tanner Helton on 9/2/16.
//  Copyright © 2016 Your School. All rights reserved.
//

import Foundation

class SpaceAdventure {
    
    init() {
        let mercury = Planet(name: "Mercury", description: "A hot planet, closest to the sun.")
        let earth = Planet(name: "Earth", description: "We live here.")
        let jupiter = Planet(name: "Jupiter", description: "A large planet.")
        let mars = Planet(name: "Mars", description: "A home to martians.")
        let venus = Planet(name: "Venus", description: "An orange planet.")
        let uranus = Planet(name: "Uranus", description: "A blue planet.")
        let neptune = Planet(name: "Neptune", description: "A cold planet, furthest from the sun.")
        let saturn = Planet(name: "Saturn", description: "A planet with rings.")
        
        planetarySystem.planets.append(mercury)
        planetarySystem.planets.append(earth)
        planetarySystem.planets.append(jupiter)
        planetarySystem.planets.append(mars)
        planetarySystem.planets.append(venus)
        planetarySystem.planets.append(uranus)
        planetarySystem.planets.append(neptune)
        planetarySystem.planets.append(saturn)
        
        //TODO reduce repetitive code.
    }
    
    let planetarySystem = PlanetarySystem(name: "Solar System", planets: [Planet]())
    
    private func displayInformation() {
        let diameterOfEarth: Float = 24859.82 //in miles pole to pole
    
        print("Welcome to the \(planetarySystem.name)!")
        print("There are \(planetarySystem.planets.count) planets to explore!")
        print("You are currently on Earth, which has the circumference of \(diameterOfEarth) miles.")
    }
    
    func start() {
        displayInformation()
        greetAdventurer()
        if (!planetarySystem.planets.isEmpty) {
            print("Let's go on an adventure!")
            determineDestination()
        }
    }
    
    private func responseToPrompt(prompt: String) -> String {
        print(prompt)
        return getln()
    }
    
    private func greetAdventurer() {
        let name = responseToPrompt("What is your name?")
        
        print("Nice to meet you \(name). My name is Eliza, I'm a old friend of Siri.")
    }
    
    private func visit(planetName: String) {
        print("Traveling to \(planetName)...")
        for planet in planetarySystem.planets {
            if planetName == planet.name {
                print("Arrived at \(planet.name). \(planet.description)")
            }
        }
    }
    
    private func determineDestination() {
        var decision = ""
        while !(decision == "Y" || decision == "N" || decision == "Cookies!") {
            decision = responseToPrompt("Shall I randomly choose a planet for you to visit? (Y or N)")
            if (decision == "Y") {
                if let planet = planetarySystem.randomPlanet {
                    visit(planet.name)
                } else {
                    print("There are no planets in this system.")
                }
            } else if (decision == "N"){
                let planetName = responseToPrompt("Ok, name the planet you would like to visit...")
                visit(planetName)
            } else if (decision == "Cookies!") {
                print("Cookies! Is not a valid response. Please respond with Y for yes or N for no")
            } else {
                print("Sokkjklmnbnmkl;/rry I didn't get that")
            }
        }
    }
}