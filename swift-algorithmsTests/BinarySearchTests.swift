//
//  BinarySearchTests.swift
//  swift-algorithmsTests
//
//  Created by Felipe Weber on 07/04/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class BinarySearchTests: XCTestCase {
    
    let binarySearch = BinarySearch()
    
    func test_caseA(){
        let elements = [0, 11, 21, 33, 45, 45, 61, 71, 73]
        let target = 33
        let caseA = binarySearch.binarySearch(array: elements, target: target)
        XCTAssertEqual(3, caseA)
    }
    
    func test_caseB(){
        let elements = [1, 2, 3, 4, 5]
        let target = 3
        let caseB = binarySearch.binarySearch(array: elements, target: target)
        XCTAssertEqual(2, caseB)
    }
    
    func test_caseC(){
        let elements = [1, 2, 3, 4, 5]
        let target = 20
        let caseC = binarySearch.binarySearch(array: elements, target: target)
        XCTAssertEqual(-1, caseC)
    }
    
    func test_caseD(){
        let elements = [1, 2, 3, 4, 6]
        let target = 5
        let caseD = binarySearch.binarySearch(array: elements, target: target)
        XCTAssertEqual(-1, caseD)
    }
    
    func test_caseE(){
        let elements = [1, 2, 3, 4, 5]
        let target = 5
        let caseE = binarySearch.binarySearch(array: elements, target: target)
        XCTAssertEqual(4, caseE)
    }
}
