//
//  SpaceAdventure.swift
//  SpaceText
//
//  Created by Tanner Helton on 9/2/16.
//  Copyright © 2016 Your School. All rights reserved.
//

import Foundation

class SpaceAdventure {
    private func displayInformation() {
        let numberOfPlanets: Int = 8
        let diameterOfEarth: Float = 24859.82 //in miles pole to pole
    
        print("Welcome to our solar system!")
        print("There are \(numberOfPlanets) planets to explore!")
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
        
        while !(decision == "Y" || decision == "N" || decision == "Cookies!") {
            decision = responseToPrompt("Shall I randomly choose a planet for you to visit? (Y or N)")
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
    }
}