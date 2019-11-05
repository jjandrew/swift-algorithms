//
//  sortingTest.swift
//  standardAlgorithmsTests
//
//  Created by Andrew, James (NA) on 05/11/2019.
//  Copyright © 2019 Andrew, James (NA). All rights reserved.
//

import XCTest

class sortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray(){
        //arrange
        let data = [6, 3, 2, 4]
        let expected = [2, 3, 4, 6]
        let sorting = Sorting()
        //act
        let actual = sorting.bubbleSort(data: data)
        //assert
        XCTAssertEqual(actual, expected)
    }

    func testBubbleSortWithManyIntegerArraysReturnsSortedArrays() {
        //arrange
        let testCases = [(input: [42, 2, 6, 365], expected: [2, 6, 42, 365]),
                         (input: [4, 3, 15, 2, 1, 6], expected: [1, 2, 3, 4, 6, 15]),
                         (input: [56, 0, -504, 1, 1, 14], expected: [-504, 0, 1, 1, 14, 56])]
                
        let sorting = Sorting()
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
}
