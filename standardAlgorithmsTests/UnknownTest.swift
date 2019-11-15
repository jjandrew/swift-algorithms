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
        let expected = 5
        let unknown = Unknown()
        
        let actual = unknow.sumOfFirstAndLast(array: input)
        
        XCTAssertEqual(actual, expected)
    }
}
