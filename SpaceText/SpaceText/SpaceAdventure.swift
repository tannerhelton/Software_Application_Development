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
        for (var i = 0; i < 11; i++) {
            print(i)
        }
        let mercury = Planet(name: "mercury", description: "A hot planet, closest to the sun.")
        let earth = Planet(name: "earth", description: "We live here.")
        let jupiter = Planet(name: "jupiter", description: "A large planet.")
        let mars = Planet(name: "mars", description: "A home to martians.")
        let venus = Planet(name: "venus", description: "An orange planet.")
        let uranus = Planet(name: "uranus", description: "A blue planet.")
        let neptune = Planet(name: "neptune", description: "A cold planet, furthest from the sun.")
        let saturn = Planet(name: "saturn", description: "A planet with rings.")
        
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
        determineDestination()
    }
    
    private func responseToPrompt(prompt: String) -> String {
        print(prompt)
        return getln()
    }
    
    private func greetAdventurer() {
        let name = responseToPrompt("What is your name?")
        
        print("Nice to meet you \(name). My name is Eliza, I'm a old friend of Siri.")
        print("Let's go on an adventure")
    }
    
    private func determineDestination() {
        var decision = ""
        var userPlanet = ""
        for (var i = 0; i < 10; i++) {
            print(i)
        }
        while !(decision == "Y" || decision == "N" || decision == "Cookies!") {
            decision = responseToPrompt("Shall I randomly choose a planet for you to visit? (Y or N)")
            if (decision == "Y") {
                print("Ok traveling to...")
                //TODO travel to random planet
            } else if (decision == "N"){
                //TODO let the user select a planet to visit
                userPlanet = responseToPrompt("Ok name the planet you would like to visit...")
                print("You chose \(userPlanet). Going there now!")
            } else if (decision == "Cookies!") {
                print("Cookies! Is not a valid response. Please respond with Y for yes or N for no")
            } else {
                print("Sokkjklmnbnmkl;/rry I didn't get that")
            }
        }
    }
}