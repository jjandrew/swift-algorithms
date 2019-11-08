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
    
    func merge(data: [Int], data1: [Int]) -> [Int] {
        let array1 = data
        let array2 = data1
        var finalArray = [Int]()
        var pointer1 = 0
        var pointer2 = 0
        let totalValues = (array1.count) + (array2.count)
        while finalArray.count != totalValues {
            if array1.count == 0 {
              for q in 0...array2.count-1 {
                finalArray.append(array2[q])
              }
            } else if array2.count == 0 {
              for p in 0...array1.count-1 {
                finalArray.append(array1[p])
              }
            } else if array1[pointer1] < array2[pointer2] {
                    finalArray.append(array1[pointer1])
                    pointer1 += 1
            } else {
                finalArray.append(array2[pointer2])
                    pointer2 += 1
            }
        }
        if array1.count > 0 {
            for i in pointer1...array1.count - 1 {
                finalArray.append(array1[i])
            }
        } else if array2.count < 0 {
            for j in pointer2...array2.count - 1 {
                finalArray.append(array2[j])
            }
        }
        return finalArray

    }
        
    func split(data: [Int]) -> ([Int], [Int]) {
        let mid = data.count / 2
        var array1 = [Int]()
        var array2 = [Int]()
        for i in 0...mid-1 {
            array1.append(data[i])
        }
        if mid > data.count {
            print("error")
        } else {
            for j in mid...data.count - 1 {
                array2.append(data[j])
            }
        }
        return (array1, array2)
    }

    func mergeSort(data: [Int]) -> [Int] {
        guard data.count > 1 else {
            return data
        }
        let tupleLists = split(data: data)
        let array1 = tupleLists.0
        let array2 = tupleLists.1
        return merge(data: mergeSort(data:array1), data1: mergeSort(data:array2))
    }


}
