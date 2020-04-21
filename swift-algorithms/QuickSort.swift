//
//  QuickSort.swift
//  swift-algorithms
//
//  Created by Felipe Weber on 21/04/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import Foundation

class QuickSort {
    
    func quickSort(array: [Int], fromIndex: Int, toIndex: Int) -> Array<Int> {
        var pivoIndex = toIndex
        var elementIndex = fromIndex
        var arrayTemp = array
        
        while elementIndex < pivoIndex {
            if arrayTemp[elementIndex] > arrayTemp[pivoIndex] {
                arrayTemp = swap(input: arrayTemp, a: pivoIndex, b: pivoIndex-1)
                if (elementIndex+1) < pivoIndex {
                    arrayTemp = swap(input: arrayTemp, a: elementIndex, b: pivoIndex)
                }
                pivoIndex -= 1
            } else {
                elementIndex += 1
            }
        }
        let leftArrayFromIndex = 0
        let leftArrayToIndex = pivoIndex - 1
        let isLeftPivotArrayNotSorted = leftArrayToIndex > 1
        if isLeftPivotArrayNotSorted {
            arrayTemp = quickSort(array: arrayTemp, fromIndex: leftArrayFromIndex, toIndex: leftArrayToIndex)
        }
        let rightArrayFromIndex = pivoIndex + 1
        let rightArrayToIndex = arrayTemp.count - 1
        let isRightPivotArrayNotSorted = rightArrayFromIndex < toIndex
        if isRightPivotArrayNotSorted {
            arrayTemp = quickSort(array: arrayTemp, fromIndex: rightArrayFromIndex, toIndex: rightArrayToIndex)
        }
        return arrayTemp
    }
    
    private func swap(input: [Int], a: Int, b: Int) -> Array<Int> {
        var inputCopy = input
        let tmp = inputCopy[a]
        inputCopy[a] = inputCopy[b]
        inputCopy[b] = tmp
        return inputCopy
    }
}
