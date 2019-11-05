//
//  Sorting.swift
//  standardAlgorithms
//
//  Created by Andrew, James (NA) on 05/11/2019.
//  Copyright © 2019 Andrew, James (NA). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var array = data
        var i = array.count-2
        var sorted = false
        while sorted == false && i >= 0 {
            for q in 0...i {
                if array[q] > array[q+1]{
                   let temp = array[q+1]
                    array[q+1] = array[q]
                    array[q] = temp
                }
            }
            i = i-1
        }
        return array
    }
}
