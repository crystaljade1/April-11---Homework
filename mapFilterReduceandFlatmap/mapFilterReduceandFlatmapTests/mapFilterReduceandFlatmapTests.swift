//
//  mapFilterReduceandFlatmapTests.swift
//  mapFilterReduceandFlatmapTests
//
//  Created by Crystal Jade Allen-Washington on 4/11/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import XCTest
@testable import mapFilterReduceandFlatmap

class mapFilterReduceandFlatmapTests: XCTestCase {
    
    func testNames() {
        let result = names(students)
        let expected = ["John", "Jon"]
        XCTAssertEqual(result, expected)
    }

    func testAnimalCount() {
        let result = animalCount(students)
        let expected: [(name: String, count: Int)] = ["John", "Jon"] = [
        for (resultItem, expectedItem) in zip(result, expected) {
        XCTAssertEqual(resultItem.name, expectedItem.name)
        }
}
