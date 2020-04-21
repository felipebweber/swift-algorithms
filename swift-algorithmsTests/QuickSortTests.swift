//
//  QuickSortTests.swift
//  swift-algorithms
//
//  Created by Felipe Weber on 21/04/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class QuickSortTests: XCTestCase {
    
    let quickSort = QuickSort()
    
    func test_caseA() {
        let array = [3, 7, 8, 5, 2, 1, 9, 5, 4]
        let expected = [1, 2, 3, 4, 5, 5, 7, 8, 9]
        let sorted = quickSort.quickSort(array: array, fromIndex: 0, toIndex: array.count-1)
        XCTAssertEqual(sorted, expected)
    }
}
