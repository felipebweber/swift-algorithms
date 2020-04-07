//
//  BinarySearch.swift
//  swift-algorithms
//
//  Created by Felipe Weber on 07/04/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import Foundation

class BinarySearch {
    func binarySearch(array: [Int], target: Int) -> Int {
        var left = 0
        var right = array.count - 1
        var middlePosition = (left + right) / 2
        while (array.count > middlePosition) {
            let middleElement = array[middlePosition]
            if middleElement == target { return middlePosition }
            
            if target < middleElement {
                right = middlePosition - 1
            }
            
            if target > middleElement {
                left = middlePosition +  1
            }
            
            if left > right { return -1 }
            
            middlePosition = (left +  right) / 2
        }
        return -1
    }
}
