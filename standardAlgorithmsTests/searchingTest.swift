//
//  searchingTest.swift
//  standardAlgorithmsTests
//
//  Created by JJ Andrew on 15/11/2019.
//  Copyright © 2019 Andrew, James (NA). All rights reserved.
//

import XCTest

class searchingTest: XCTestCase {
    
    func testLinearSearchReturnsABooleanExpressionDependingOnWhatsBeingSearchedFor() {
        let array = [6, 5, 26, 5, 31, 50, 23, 10, 55, 67, 90, 2, 10, 7, 4, 9, 100, 36, 99, 20]
        let search1 = 1
        let search2 = 20
        let searching = Searching()
        
        let actual1 = searching.linearSearch(data: array, item: search1)
        let actual2 = searching.linearSearch(data: array, item: search2)
        
        XCTAssertEqual(actual1, false)
        XCTAssertEqual(actual2, true)
    }

    func linearSearchPerformanceTest() {
        let searching = Searching()
        var data = [Int]()
        for i in 0..<5 {
            data.append(i)
        }
        let searchFor = data[Int.random(in: 0..<data.count)]
        measure {
        searching.linearSearch(data: data, item: searchFor)
        }
        
        var data1 = [Int]()
        for j in 0..<50 {
            data1.append(j)
        }
        let searchFor1 = data1[Int.random(in: 0..<data.count)]
        measure {
        searching.linearSearch(data: data1, item: searchFor1)
        }
        
        var data2 = [Int]()
        for m in 0..<500 {
            data2.append(m)
        }
        let searchFor2 = data2[Int.random(in: 0..<data.count)]
        measure {
        searching.linearSearch(data: data2, item: searchFor2)
        }
    }

    func testBinarySearchReturnsABooleanExpressionDependingOnWhatsBeingSearchedFor() {
        let array = [-150, -40, 0, 5, 12, 34, 56, 105, 263]
        let search1 = 1
        let search2 = 105
        let searching = Searching()
        
        let actual1 = searching.linearSearch(data: array, item: search1)
        let actual2 = searching.linearSearch(data: array, item: search2)
        
        XCTAssertEqual(actual1, false)
        XCTAssertEqual(actual2, true)
    }

    func binarySearchPerformanceTest() {
        let sorting = Sorting()
        let searching = Searching()

        var data = [Int]()
        for i in 0..<5 {
            data.append(i)
        }
        let searchFor = data[Int.random(in: 0..<data.count)]
        measure {
            searching.binarySearch(data: data, item: searchFor)
        }

        var data1 = [Int]()
        for i in 0..<50 {
            data.append(i)
        }
        let searchFor1 = data1[Int.random(in: 0..<data.count)]
        measure {
            searching.binarySearch(data: data, item: searchFor1)
        }
        
        var data2 = [Int]()
        for i in 0..<500 {
            data.append(i)
        }
        let searchFor2 = data2[Int.random(in: 0..<data.count)]
        measure {
            searching.binarySearch(data: data, item: searchFor2)
        }
    }

}
