/*
 
 Задача на программирование: сортировка подсчётом
 
 Первая строка содержит число 1 ≤ n ≤ 10^4 вторая — n натуральных чисел, не превышающих 10. Выведите упорядоченную по неубыванию последовательность этих чисел.
 
 Sample Input:
 5
 2 3 9 2 9
 
 Sample Output:
 2 2 3 9 9
 
 */

extension Solution {
    
    /** https://github.com/kodecocodes/swift-algorithm-club/blob/master/Counting%20Sort/README.markdown */
    
    @_optimize(speed)
    func countSort(_ array: [Int]) -> [Int] {
        let count = (array.max() ?? 0) + 1
        var countArray = [Int](repeating: 0, count: count)
        
        // output for step 1:
        // Index 0 1 2 3 4 5 6 7 8 9
        // Count 0 0 2 1 0 0 0 0 0 2
        for item in array {
            countArray[item] += 1
        }
        
        // output for step 2:
        // Index 0 1 2 3 4 5 6 7 8 9
        // Count 0 0 2 3 3 3 3 3 3 5
        for index in 1..<countArray.count {
            let sum = countArray[index] + countArray[index - 1]
            countArray[index] = sum
        }
                
        // output for step 3
        // Index  0 1 2 3 4
        // Output 2 2 3 9 9
        var sortedArray = [Int](repeating: 0, count: array.count)
        for index in stride(from: array.count - 1, through: 0, by: -1) {
            let element = array[index]
            countArray[element] -= 1
            sortedArray[countArray[element]] = element
        }
        
        return sortedArray
    }
    
    func countSortSolution() {
        let _ = Int(readLine() ?? "") ?? 0
        let array = readLine()!.split(separator: " ").compactMap { Int($0) }
        let result = countSort(array)
        print(result.compactMap { String($0) }.joined(separator: " "))
    }
}
