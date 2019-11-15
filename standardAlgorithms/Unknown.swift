//
//  Unknown.swift
//  standardAlgorithms
//
//  Created by JJ Andrew on 15/11/2019.
//  Copyright © 2019 Andrew, James (NA). All rights reserved.
//

import Foundation

class unkown {
    func sumOfFirstAndLast(array: [Int]) -> Int {
        if array.count == 1 {
            return array[0]
        } else {
            let sum = array[0] + array[array.count-1]
            return sum
        }
    }
}
