//: [Previous](@previous)

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

// 1. Write a function names that accepts [String: Set<String>] and returns [String] containing all of the names sorted alphabetically. (hint: There is a function to sort an array. Its name is not meant to be surprising.) Call names with the provided dictionary.


let names = students.map {
    (key, value) in
    key
    }.sorted()

print(names)

// 2. Write a function animalCount that accepts [String: Set<String>] and returns [(name: String, count:Int)] where count is the number of animals that each person likes. Call animalCount with the provided dictionary.

func animalCount(_ input: [String: Set<String>]) -> [(name: String, count: Int)] {
    let unsortedListOfNames: [(String, Int)] = input.map({ (key, value) in
        return (key, value.count)
    })
    
    return unsortedListOfNames.sorted(by: { (lhs, rhs) in lhs < rhs })
}
print(animalCount(students))


// 3. Write a function spoilSport that accepts [String: Set<String>] and returns a Set<String> which should be a list of all of the students who didn't like any animals.

let hateAnimals = students.filter { $0.value.isEmpty }.map { $0.key }
print(hateAnimals)



// 4. Write a function called findStudent that accepts [String: Set<String>] and a value indicating whether we want the student(s) who like(s) the most or the least amount of animals. findStudent should return Set<String>?

func findStudent(in list: [String: Set<String>], wantsMax: Bool) -> Set<String>? {
    
    
    let maxTuple = students.reduce(students.first!) { (accum, element) in
        if element.value.count > accum.value.count {
            return element
        } else {
            return accum
        }
    }
    
    let minTuple = students.reduce(students.first!) { (accum, element) in
        if element.value.count < accum.value.count {
            return element
        } else {
            return accum
        }
    }
    
    let maxNumber = maxTuple.value.count
    let minNumber = minTuple.value.count
    
    let filteredList = students.filter { (_, value) in
        if wantsMax {
            return value.count == maxNumber
        } else {
            return value.count == minNumber
            
        }
    }
    
    let mapped = filteredList.map { (name, _) in
        name
    }
    
    return Set(mapped)
}




findStudent(in: students, wantsMax: true)
findStudent(in: students, wantsMax: false)


// 5. Write a function named 'averageCount' that returns the average number of animals individuals like (rounded down, remember to 'import Foundation' if you don't see 'floor' as an available function.

func averageCount(_ input: [String: Set<String>]) -> [(name: String, count: Double)] {
    let unsortedListOfNames: [(String, Double)] = input.map({ (key, value) in
        return (key, floor(Double(value.count)))
    })
    
    return unsortedListOfNames.sorted(by: { (lhs, rhs) in lhs < rhs })
}
print(averageCount(students))

// 6. Write a function named allAnimals1 that accepts [String: Set<String>] and returns [Set<String>] containing all of the animals listed where the sets are in order by the name of the student.

func allAnimals1(_ input: [String: Set<String>]) -> [Set<String>] {
    let sortedStudents = students.sorted { (lhs, rhs) in (lhs.key < rhs.key) }
    var organizedAnimalList: [Set<String>] = []
    
    for (_, value) in sortedStudents {
        organizedAnimalList.append(value)
    }
    
    return organizedAnimalList
    
}
print(allAnimals1(students))



// 7. Write a function named 'allAnimals2' that accepts [String: Set<String>] and returns [String] containing all of the animals listed where the sets are in order by the name of the student.

func allAnimals2(_ input: [String: Set<String>]) -> [String] {
    
    let organizedAnimalList: [Set<String>] = allAnimals1(students)
    var animalList: [String] = organizedAnimalList.flatMap { $0 }
    return animalList
  
}

print(allAnimals2(students))


// 10. Implement a function that returns all students who like Zebras.

let likeZebras = students.filter { $0.value.contains("Zebra") }.map { $0.key }

print(likeZebras)

