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
    var planets: [Planet]
    init(name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
    }
    
    
}