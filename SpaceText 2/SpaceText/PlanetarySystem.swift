import Foundation

class PlanetarySystem {

    let name: String
    let planets: [Planet]
    var randomPlanet: Planet? { // http://stackoverflow.com/a/24026093
        if planets.isEmpty {
            return nil
        } else {
            let index = Int(arc4random_uniform(UInt32(planets.count)))
            return planets[index]
        }
    }
    
    init(name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
    }
    
}