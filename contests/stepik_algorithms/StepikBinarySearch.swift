/*

 Задача на программирование: двоичный поиск
 
 В первой строке даны целое число 1 ≤ n ≤ 10^5 и массив A[1…n] из n различных натуральных чисел, не превышающих 10^9, в порядке возрастания, во второй — целое число 1 ≤ k ≤ 10 и k натуральных чисел b1,…,bk, не превышающих 10^9. Для каждого i от 1 до k необходимо вывести индекс 1 ≤ j ≤ n, для которого A[j] = bi, или −1, если такого j нет.
 
 Sample Input:
 5 1 5 8 12 13
 5 8 1 23 1 11
 
 Sample Output:
 3 1 -1 1 -1
 
*/

extension Solution {
    func binarySearch(arr1: [Int], arr2: [Int]) -> [Int] {
        var result = arr2
        
        for i in 0..<arr2.count {
            result[i] = binarySearch(sortedArray: arr1, searchItem: arr2[i])
        }
        
        return result
    }

    private func binarySearch(sortedArray: [Int], searchItem: Int) -> Int {
        guard !sortedArray.isEmpty else {
            return -1
        }
        
        var result = -1
        var left = 0
        var right = sortedArray.count - 1
        
        while left < right {
            let mid = (left + right) / 2
            
            if sortedArray[mid] == searchItem {
                left = mid
                right = mid
                break
            }
            
            if sortedArray[mid] < searchItem {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        if left == right {
            // в условиях задачи индексы начинаются с 1
            result = sortedArray[left] == searchItem ? (left + 1) : -1
        }
        
        return result
    }
    
    func binarySearchSolution() {
        var n = readLine()!.split(separator: " ").compactMap { Int($0) }
        var k = readLine()!.split(separator: " ").compactMap { Int($0) }
        var arr1: [Int] = []
        var arr2: [Int] = []

        for i in 0..<n.removeFirst() {
            arr1.append(n[i])
        }

        for j in 0..<k.removeFirst() {
            arr2.append(k[j])
        }

        let result = binarySearch(arr1: arr1, arr2: arr2)
        print(result.compactMap { String($0) }.joined(separator: " "))
    }
}
