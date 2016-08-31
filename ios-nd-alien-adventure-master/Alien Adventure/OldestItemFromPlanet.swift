//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var carbonAges: [Int] = []
        for item in inventory {
            if planet == item.historicalData["PlanetOfOrigin"]! as! String {
                for i in item.historicalData {
                    if i.0 == "CarbonAge" {
                        carbonAges.append(i.1 as! Int) //gather all the carbon values into an array
                    }
            
                }
            }
        }
        for highest in inventory {
            if highest.historicalData["CarbonAge"] as? Int == carbonAges.maxElement(){ //grab the highest value from the IntArray and check which item has that value
                return highest
            }
        }
        return nil //return nil if none of the for loops match above indicating the item isn't available
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"