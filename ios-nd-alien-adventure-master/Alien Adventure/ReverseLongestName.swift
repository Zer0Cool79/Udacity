//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var count = 0
        var longest = ""
        for value in inventory {
            if value.name.characters.count > count {
                count = value.name.characters.count;
                longest = value.name
            }
        }
        return String(longest.characters.reverse())
    }
}

/*
 Count the number of chars in a string.
Store the count found.
If the count is higher than or equal to the previous count store the string as the longest found.
Repeat until all strings are checked.
Output the longest (last found) string.
Reverse it
 */

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"