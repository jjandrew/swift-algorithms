//
//  UnknownTest.swift
//  standardAlgorithmsTests
//
//  Created by JJ Andrew on 15/11/2019.
//  Copyright © 2019 Andrew, James (NA). All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {

    func  testSumOfFirstAndLastWithIntegerArrayReturnsSumOfFirstAndLastItems() {
        //arrange
        let inputData = [1,3,4,5]
        let expected = 6
        let unknown = Unknown()
        
        //act
        let actual = unknown.sumOfFirstAndLast(array: inputData)
        //assert
        
        XCTAssertEqual(actual, expected)
    }
    
    func ifArrayContainsOneItemFunctionReturnsThatNumber() {
        let input = [5]
        let expected = 10
        let unknown = Unknown()
        
        let actual = unknown.sumOfFirstAndLast(array: input)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testIfArrayIfEmpty0IsReturned() {
        let input = [Int]()
        let expected = 0
        let unknown = Unknown()
        
        let actual = unknown.sumOfFirstAndLast(array: input)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testmodeOfSortedArrayReturns0WhenEmptyArrayIsPassedIn() {
        let input = [Int]()
        let expected = 0
        let unknown = Unknown()
        
        let actual = unknown.modeOfSortedArray(array: input)
        
        XCTAssertEqual(actual, expected)
    
    }
    
    func testIfmodeOfSortedArrayReturnsTheCorrectModeWhenOneValueIsInput() {
        let input = [1]
        let expected = 1
        let unknown = Unknown()
        
        let actual = unknown.modeOfSortedArray(array: input)
        
        XCTAssertEqual(actual, expected)
    }
        
    func testIfmodeOfSortedArrayReturnsTheCorrectMode() {
        let input = [1, 5, 5, 7, 7, 7, 7, 8, 10, 10, 35, 35, 35]
        let expected = 7
        let unknown = Unknown()
        
        let actual = unknown.modeOfSortedArray(array: input)
        
        XCTAssertEqual(actual, expected)
        
    }
    
    func testIfmodeOfSortedArrayReturnsTheCorrectModeWhenMultipleSameValuesAreEntered() {
        let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let expected = 10
        let unknown = Unknown()
        
        let actual = unknown.modeOfSortedArray(array: input)
        
        XCTAssertEqual(actual, expected)
        
    }
    
    func testSecondSmallestNumberFunctionReturns0WhenLessThan2NumbersEntered() {
        let input1 = [0]
        let input2 = [Int]()
        let expected = 0
        let unknown = Unknown()
        
        let actual1 = unknown.secondSmallest(array: input1)
        let actual2 = unknown.secondSmallest(array: input2)
        
        XCTAssertEqual(actual1, expected)
        XCTAssertEqual(actual2, expected)
    }
}
