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
    
    func testMergeFunctionWithIntegerArrayReturnsSortedArray() {
        //arrange
        let input = [1, 67, 99]
        let input1 = [14, 32, 54, 72]
        let expected = [1, 14, 32, 54, 67, 72, 99]
        let sorting = Sorting()
        //act
        let actual = sorting.merge(data: input, data1: input1)
        //assert
        XCTAssertEqual(actual, expected)
        //testCases = [(input: [1, 67, 99], input1: [14, 32, 54, 72], expected: [1, 14, 32, 54, 67, 72, 99])]
    }
    

    func testSplitFunctionReturnsTwoArrays() {
        let input = [1,2,3,4,5,6,7]
        let expected = [1,2,3]
        let expected1 = [4,5,6,7]
        let sorting = Sorting()
        let actual = sorting.split(data: input)
        let tuple1 = actual.0
        let tuple2 = actual.1
        XCTAssertEqual(tuple1, expected)
        XCTAssertEqual(tuple2, expected1)
    
    }
    
    func testMergeSortReturnsASortedArray() {
        let input = [27, 45, 15, -100, 62, 54, 23]
        let expected = [-100, 15, 23, 27, 45, 54, 62]
        let sorting = Sorting()
        let actual = sorting.mergeSort(data: input)
        XCTAssertEqual(actual, expected)
    }
    
    func testQuickSortReturnsASortedArray() {
        let input = [15, 13, 29, 55, 6, 24, 5, 42]
        let expected = [5, 6, 13, 15, 24, 29, 42, 55]
        let sorting = Sorting()
        
        let actual = sorting.quickSort(data: input)
        
        XCTAssertEqual(actual, expected)
    }
    
}
