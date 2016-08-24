//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        }
        
        if (s1.characters.count + s2.characters.count) != shuffle.characters.count{
            return false
        }
        
        var s1Array = [Character]()
        var s2Array = [Character]()
        var shuffledArray1 = [Character]()
        var shuffledArray2 = [Character]()
        
        for character in s1.characters {
            s1Array.append(character)
        }
        
        for character in s2.characters {
            s2Array.append(character)
        }
        //for each characeter in the shuffle array, check to see if it exists in the passed in arrays 1 and 2 and updated shuffled array with the order for each
        for character in shuffle.characters{
            if s1.characters.contains(character) {
                shuffledArray1.append(character)
            }
            if s2.characters.contains(character){
                shuffledArray2.append(character)
            }
        }
        //Now check to see that the shuffled arrays are equal to the original array1 and array2's that were passed in. This will validate the order is correct.
        if (shuffledArray1 == s1Array) && (shuffledArray2 == s2Array) {
            return true
        } else {
            return false
        }
    }
}
