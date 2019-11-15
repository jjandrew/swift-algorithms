//
//  main.swift
//  standardAlgorithms
//
//  Created by Andrew, James (NA) on 05/11/2019.
//  Copyright © 2019 Andrew, James (NA). All rights reserved.
//

import Foundation
class main {
    
    func main() {
        let sorting = Sorting()
        let searching = Searching()
        print("""
            Bubble Sort

            The bubble sort will go through an array of data comparing each value to the value next to it. At the end of the first run we will know that the last position in the array holds the largest value. The algorithm will then go through the data again making more swaps when values after it are smaller ommiting the final character. This will continue until no swaps are made on a pass.

            Time complexity:
                Best case: O(n)
                Average case: O(n^2)
                Worst case: O(n^2)

            Space complexity: O(1)

            Input = [56, 0, -504, 1, 1, 14]
            """, "Output = ", sorting.bubbleSort(data: [56, 0, -504, 1, 1, 14]),
            """



            Merge Sort

            Splits the list in half into sub-lists. Will continue doing this, using recurssion, until each of the lists only contain one item. The sub lists will then be merged together and sorted in this process. This will continue until all the sub lists have been merged together.

            Time complexity:
                Best case: O(n log(n))
                Average case: O(n log(n))
                Worst case: O(n log(n))

            Space complexity: O(n)

            Input = [27, 45, 15, -100, 62, 54, 23]
            """, "Output = ", sorting.mergeSort(data: [27, 45, 15, -100, 62, 54, 23]),
            """



            Quick Sort

            The size of the array will be checked. If it is less than or equal to 1 then the array itself can be returned as it is sorted. Other wise the first item in the array is selected as a pivot. All items in array are compared to the pivot and if they are smaller then they are placed in the left hand array otherwise they are placed in the right hand array. You then have two sublists and the process repeats again untill all arrays have single digits. Then the arrays are added together between the pivot until the full sorted list is made.

            Time complexity:
                Best case: O(n log n)
                Average case: O(n^2)
                Worst case: O(n^2)

            Space complexity: O(n)

            Input = [15, 13, 29, 55, 6, 24, 5, 42]
            """, "Output = ", sorting.quickSort(data: [15, 13, 29, 55, 6, 24, 5, 42]),
            """



            Insertion Sort

            The algorithm will copy the second value to a temporary storage location. It will then compare that item to the item to the left of it in an array. If the item being searched for is smaller then the larger item will copy itself to the position to the right and then the item in temporary storage will be placed in the first position. This will then continue as it moves along the array until it reaches the end of the array and the array is sorted.

            Time complexity:
                Best case: O(n)
                Average case: O(n^2)
                Worst case: O(n^2)

            Space complexity: O(1)

            Input = [15, 24, -5, 3, 27, 52, 12, 1]
            """, "Output = ", sorting.insertionSort(data: [15, 24, -5, 3, 27, 52, 12, 1]),
            """



            Linear Search

            The algorithm will start at the beginning of a list and move through each item one in order, each time comparing it to the number being searched for until the item being searched for is found or it reaches the end of the array.

            Time complexity:
                Best case: O(1)
                Average case: O(n)
                Worst case: O(n)

            Space complexity: O(1)

            Input = [6, 5, 26, 5, 31, 50, 23, 10, 55, 67, 90, 2, 10, 7, 4, 9, 100, 36, 99, 20]
            """, "Output = ", searching.linearSearch(data: [6, 5, 26, 5, 31, 50, 23, 10, 55, 67, 90, 2, 10, 7, 4, 9, 100, 36, 99, 20], item: 10),
            """



            Binary Search

            Ordered list is entered. Mid point is taken and compared to the value being searched for. It will then exclude the other half of the array and take another midpoint from what is left of the array. If the midpoint shows the number being searched for then the algorithm stops. This process is then repeated until we know the item isn't in the array of term is found.

            Time complexity:
                Best case: O(1)
                Average case: O(log n)
                Worst case: O(log n)

            Space complexity: O(1)

            Input = [-150, -40, 0, 5, 12, 34, 56, 105, 263]
            """, "Output = ", searching.binarySearch(data: [-150, -40, 0, 5, 12, 34, 56, 105, 263], item: 56))
    }
}
