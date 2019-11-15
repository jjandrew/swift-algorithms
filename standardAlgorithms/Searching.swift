//
//  Searching.swift
//  standardAlgorithms
//
//  Created by JJ Andrew on 12/11/2019.
//  Copyright © 2019 Andrew, James (NA). All rights reserved.
//

import Foundation

class Searching {
    func linearSearch (data: [Int], item: Int) -> Bool {
        var found = false
        for i in 1...data.count {
            if data[i - 1] == item {
                found = true
            }
        }
        return found
    }

    func binarySearch(data: [Int], item: Int) -> Bool {
        var first = 0
        var last = data.count-1
        var found = false
        while (first <= last) && found == false {
            let mid = (first + last)/2
            if data[mid] == item {
                found = true
            } else {
                if item < data[mid] {
                    last = mid - 1
                } else {
                    first = mid + 1
                }
            }
        }
        if found == true {
            return true
        } else {
            return false
        }
    }
}
