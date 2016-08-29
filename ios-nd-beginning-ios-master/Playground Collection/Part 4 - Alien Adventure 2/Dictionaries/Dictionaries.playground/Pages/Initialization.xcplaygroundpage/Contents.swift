//: ### Dictionary Initialization

// Initializer syntax
var groupsDict = [String:String]()

// Dictionary literal
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions": "pride"]

// Another example
var lifeSpanDict = ["African Grey Parrot": 50...70, "Tiger Salamander": 12...15, "Bottlenose Dolphin": 20...30]
var averageLifeSpanDict = [String:Range<Int>]()
//: [Next](@next)
var stringBool = [String:Bool]()

//Initialize a dictionary using dictionary literal syntax. The keys should be the Strings: "Anchovies", "Coconut", "Cilantro", "Liver" and each value should be a Bool representing whether you like the food or not.

var foodDict: [String:Bool] = ["Anchovies": true, "Coconut": true, "Cilantro":true, "Liver": false]

/*
Insert an entry for “George H.W. Bush” into the dictionary below.
*/
var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton":"Socks",
                            "George Bush":"Miss Beazley", "Ronald Reagan":"Lucky"]

 /*This is the desired output:

[George H. W. Bush: Millie, Barack Obama: Bo, Bill Clinton: Socks,
George Bush: Miss Beazley, Ronald Reagan: Lucky]
 */

presidentialPetsDict["George H. W. Bush"] = "Millie"

//Remove the entry for "George Bush" from the presidentialPetsDict and replace it with an entry for "George W. Bush". Use the same value for both keys.

presidentialPetsDict["George Bush"] = nil
presidentialPetsDict["George W. Bush"] = "Miss Beazley"
print(presidentialPetsDict)

//We've initialized a new dictionary of presidentialDogs with the entries from presidentialPets. Update the entry for “Bill Clinton” by replacing "Socks" the cat with "Buddy" the dog. Print out the presidentialDogs dictionary to test your solution.

var presidentialDogs = presidentialPetsDict
presidentialDogs.updateValue("Buddy", forKey: "Bill Clinton")
print(presidentialDogs)

/*
 Use subscript syntax to fill in the print statement below...
 
 print("Michele Obama walks \() every morning.")
 ...and produce the following string:
 
 Michele Obama walks Bo every morning.
 You'll need to retrieve a value from the presidentialDogs dictionary and unwrap it using if let.
 
 */


if let herDog =  presidentialDogs["Barack Obama"] {
        print("Michele Obama walks \(herDog) every morning.")
    }else{
        print("dog not found")
}


 //How many studio albums did Led Zeppelin release?
 
 var studioAlbums = ["Led Zeppelin":1969, "Led Zeppelin II":1969, "Led Zeppelin III":1970,
 "Led Zeppelin IV":1971, "House of the Holy":1973, "Physical Graffiti":1975,
 "Presence":1976, "In Through the Out Door":1979, "Coda":1982]

print(studioAlbums.count)



