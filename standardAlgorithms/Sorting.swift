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
        let sorted = false
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
        var array1 = data
        var array2 = data1
        var finalArray = [Int]()
        let pointer1 = 0
        let pointer2 = 0
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
                    array1.remove(at: 0)
            } else {
                finalArray.append(array2[pointer2])
                array2.remove(at: 0)
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

    func quickSort(data: [Int]) -> [Int] {
      var left = [Int]()
      var right = [Int]()
      var newData = [Int]()
      if data.count < 2 {
        return data
      } else {
        let pivot = data[0]
        for i in 1..<data.count {
         let item = data[i]
          if item < pivot {
           left.append(item)
         } else {
           right.append(item)
         }
       }
        newData.append(contentsOf: (quickSort(data: left)))
        newData.append(pivot)
        newData.append(contentsOf: (quickSort(data: right)))
        return newData
      }
    }
    
    func insertionSort (data: [Int]) -> [Int] {
      var array = data
        for i in 1...array.count-1 {
        let value = array[i]
        var pointer = i
        while pointer > 0 && (array[pointer - 1] > value) {
            array[pointer] = array[pointer - 1]
            pointer = pointer - 1
        }
        array[pointer] = value
      }
      return array
    }
    
    func linearSearch (data: [Int], item: Int) -> Bool {
        var found = false
        for i in 1...data.count {
            if data[i - 1] == item {
                found = true
            }
        }
        return found
    }
    
}
