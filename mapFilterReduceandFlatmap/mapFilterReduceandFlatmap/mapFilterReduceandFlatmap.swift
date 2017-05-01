//
//  mapFilterReduceandFlatmap.swift
//  mapFilterReduceandFlatmap
//
//  Created by Crystal Jade Allen-Washington on 4/11/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation


let students: [String: Set<String>] = [
    "Susan" : [
        "Porcupine",
        "Armadillo",
        "Opossum",
        "Goat",
    ],
    "Suzanne" : [
        "Zebra",
        "Porcupine",
    ],
    "Susie" : [],
    "Siouxsie" : [
        "Zebra",
        "Porcupine",
        "Elephant",
        "Rabbit",
        "Falcon",
    ],
    "John" : [
        "Goat",
        "Elephant",
        "Rabbit",
        "Squid",
    ],
    "Jon" : [
        "Horse",
        "Hippopotamus",
        "Butterfly"
    ],
    "Jonah" : ["Whale",
               "Lion",
               "Zebra",
               "Dog",
               "Zebra",
               "Porcupine",
               "Armadillo",
               "Opossum",
               "Goat",
               "Elephant",
               "Rabbit",
               "Squid",
               "Falcon",
               "Octopus",],
    "Jonathan" : [
        "Snail",
        "Cobra"
    ],
    "Jonas" : [
        "Cheetah",
        "Tiger"
    ],
]


let names = students.map {
    (key, value) in
    key
    }.sorted()



// Write a function 'names' that accepts [String: Set<String>] and returns [String] containing all of the names sorted alphabetically. Call 'names' with the provided dictionary.

func names(_ input: [String: Set<String>]) -> [String] {
    let unsortedListOfNames = input.map({ (key, _) -> String in
        return key
    })
    
    return unsortedListOfNames.sorted()
}

// Write a function 'animalCount' that accepts [String: Set<String>] and returns [name: String, count: Int)] where count is the number of animals that each person likes. Call 'animalCount' with the the provided dictionary.

func animalCount(_ input: [String: Set<String>]) -> [(name: String, count: Int)] {
    let unsortedListOfNames: [(String, Int)] = input.map({ (key, value) in
        return (key, value.count)
    })
    
    return unsortedListOfNames.sorted(by: { (lhs, rhs) in lhs < rhs })
}

// Write a function 'spoilSport' that accepts [String: Set<String>] and returns a Set<String> which should be a list of all the students who didn't like any animals.


let studentAnimalCount = [
    ("John", 4),
    ("Jon", 3),
    ("Jonah", 13),
    ("Jonas", 2),
    ("Jonathan", 2),
    ("Siouxsie", 5),
    ("Susan", 4),
    ("Susie", 0),
    ("Suzanne", 2),
]


let hateAnimals = students.filter { $0.value.isEmpty }.map { $0.key }


// Write a function called findStudent that accepts [String: Set<String>] and a value indicating whether we want the student(s) who like(s) the most or the least amount of animals. findStudent should return Set<String>? (optional).


let maxTuple = students.reduce(students.first!) { (accum, element) in
    if element.value.count > accum.value.count {
        return element
    } else {
        return accum
    }
}

let maxNumber = maxTuple.value.count

let filteredList = students.filter { (_, value) in
    return value.count == maxNumber
}

let mapped = filteredList.map { (name, _) in
    return name
}



// 5. Write a function named 'averageCount' that returns the average number of animals individuals like (rounded down, remember to 'import Foundation' if you don't see 'floor' as an available function.

let averageCount = Double(averag) / Double(studentAnimalCount.count)

func averageCount(_ input: [(String, Int)]) -> Int {
        return averageCount(Array(studentAnimalCount))
    }






// 7. Write a function named 'allAnimalsTwo' that accepts [String: Set<String>] and returns [String] containing all of the animals listed where the sets are in order by the name of the student.

// STEP ONE: access ordered list of animals
// STEP TWO: condense (reduce) list to just an array of strings





// 10. Implement a function that returns all students who like Zebras.

let likeZebras = students.filter { $0.value.contains("Zebra") }.map { $0.key }











