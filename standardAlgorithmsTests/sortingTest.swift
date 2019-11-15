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
    
    func bubbleSortPerformanceTest() {
        let sorting = Sorting()
        var data = [Int]()
        for i in 0..<5 {
            data.append(Int.random(in: 1...100))
        }

        measure {
            sorting.bubbleSort(data: data)
        }
        var data1 = [Int]()
        for j in 0..<50 {
            data1.append(Int.random(in: 1...100))
        }

        measure {
            sorting.bubbleSort(data: data1)
        }
        var data2 = [Int]()
        for m in 0..<500 {
            data2.append(Int.random(in: 1...100))
        }

        measure {
            sorting.bubbleSort(data: data2)
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
        //arrange
        let input = [1,2,3,4,5,6,7]
        let expected = [1,2,3]
        let expected1 = [4,5,6,7]
        let sorting = Sorting()
        //act
        let actual = sorting.split(data: input)
        let tuple1 = actual.0
        let tuple2 = actual.1
        //assert
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
    
    func mergeSortPerformanceTest() {
        let sorting = Sorting()
        var data = [Int]()
        for i in 0..<5 {
            data.append(Int.random(in: 1...100))
        }

        measure {
            sorting.mergeSort(data: data)
        }
        var data1 = [Int]()
        for j in 0..<50 {
            data1.append(Int.random(in: 1...100))
        }

        measure {
            sorting.mergeSort(data: data1)
        }
        var data2 = [Int]()
        for m in 0..<500 {
            data2.append(Int.random(in: 1...100))
        }

        measure {
            sorting.mergeSort(data: data2)
        }
    }
    
    func testQuickSortReturnsASortedArray() {
        let input = [15, 13, 29, 55, 6, 24, 5, 42]
        let expected = [5, 6, 13, 15, 24, 29, 42, 55]
        let sorting = Sorting()
        
        let actual = sorting.quickSort(data: input)
        
        XCTAssertEqual(actual, expected)
    }
    
    func quickSortPerformanceTest() {
        let sorting = Sorting()
        var data = [Int]()
        for i in 0..<5 {
            data.append(Int.random(in: 1...100))
        }

        measure {
            sorting.quickSort(data: data)
        }
        var data1 = [Int]()
        for j in 0..<50 {
            data1.append(Int.random(in: 1...100))
        }

        measure {
            sorting.quickSort(data: data1)
        }
        var data2 = [Int]()
        for m in 0..<500 {
            data2.append(Int.random(in: 1...100))
        }

        measure {
            sorting.quickSort(data: data2)
        }
    }
    
    func testInsertionSortReturnsASortedArray() {
        let input = [15, 24, -5, 3, 27, 52, 12, 1]
        let expected = [-5, 1, 3, 12, 15, 24, 27, 52]
        let sorting = Sorting()
        
        let actual = sorting.insertionSort(data: input)
        
        XCTAssertEqual(actual, expected)
    }
    
    func InsertionSortPerformanceTest() {
        let sorting = Sorting()
        var data = [Int]()
        for i in 0..<5 {
            data.append(Int.random(in: 1...100))
        }

        measure {
            sorting.insertionSort(data: data)
        }
        var data1 = [Int]()
        for j in 0..<50 {
            data1.append(Int.random(in: 1...100))
        }

        measure {
            sorting.insertionSort(data: data1)
        }
        var data2 = [Int]()
        for m in 0..<500 {
            data2.append(Int.random(in: 1...100))
        }

        measure {
            sorting.insertionSort(data: data2)
        }
    }
    
 
}
