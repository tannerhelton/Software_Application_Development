//
//  PlanetarySystem.swift
//  SpaceText
//
//  Created by Tanner Helton on 9/7/16.
//  Copyright © 2016 Your School. All rights reserved.
//

import Foundation

class PlanetarySystem {
    let name: String
    let planets: [Planet]
    init(name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
    }
    
    var randomPlanet: Planet? {
        if planets.isEmpty {
            return nil
        } else {
            let index = Int(arc4random_uniform(UInt32(planets.count)))
            return planets[index]
        }
    }
}