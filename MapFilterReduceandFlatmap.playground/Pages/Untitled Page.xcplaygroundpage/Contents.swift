//: Playground - noun: a place where people can play

import UIKit


let values = [2.0, 4.0, 5.0, 6.0]

var squares: [Double] = []

for value in values {
    squares.append(value * value)
}

squares

// Map

let squaresWithMap = values.map { (value: Double) -> Double in
    return value * value
}

squaresWithMap


let squaresWithMap2 = values.map { value in value * value }

squaresWithMap2

let squaresWithMap3 = values.map { $0 * $0 }

squaresWithMap3

let amounts = [122, 43, 235, 266, 36]

let prices = amounts.map {"$\($0)"}
prices

struct Person {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let personDict = ["Steve": 29, "Crystal": 28, "Noah": 2]

let persons = personDict.map {name, age in Person(name: name, age: age)}

persons.first?.name

// Filter

let numbers = [2, 5, 6, 8, 7, 8, 9]
let evenNumbers = numbers.filter { $0 % 2 == 0 }

evenNumbers

// Higher order functions include all these things 

let numbersTwo = [1, 2, 3, 4, 3, 3]

// 1. filter into 3, 3, 3 then filter into 2,4

let filtered = numbers.filter( { return $0 == 3 } )
filtered

var filteredArray = [Int]()
for number in numbersTwo {
    if number == 3 {
        filteredArray.append(number)
    }
}


filteredArray


// 2. transform [1, 2, 3, 5] -> [2, 4, 6, 8]

let newList = [1, 2, 3, 5]

var transformedList = newList.map ({ return $0 * 2 })
transformedList


// 3. sum [1, 2, 3, 5] -> 10 using reduce

var sumElements = 0
for number in [1, 2, 3, 5] {
    sumElements += number
}
 sumElements

let sum = [1, 2, 3, 5].reduce(0, {sum, number in sum + number})
sum







//
//// HOMEWORK
//
//let maxTuple = students.reduce(students.first!) { (accum, element) in
//    if element.value.count > accum.value.count {
//        return element
//    } else {
//        return accum
//    }
//}
//
//let maxNumber = maxTuple.value.count
//
//let filteredList = students.filter { (_, value) in
//    return value.count == maxNumber
//}
//
//let mapped = filteredList.map { (name, _) in
//    return name
//}
//
