/*
 
 Задача на программирование: наибольшая последовательнократная подпоследовательность
 
 Дано целое число 1 ≤ n ≤ 10^3 и массив A[1…n] натуральных чисел, не превосходящих 2⋅10^9. Выведите максимальное  1  ≤ k ≤ n, для которого найдётся подпоследовательность 1 ≤ i1 < i2 < ... < ik ≤n длины k, в которой каждый элемент делится на предыдущий (формально: для  всех 1 ≤ j < k, A[ij] ∣ A[ij+1]).
 
 Sample Input:
 4
 3 6 7 12
 
 Sample Output:
 3
 
 */

extension Solution {
    
    @_optimize(speed)
    func greaterSubsequenceLength(array: [Int]) -> Int {
        var lengthsArray = [Int](repeating: 1, count: array.count)
        
        for i in (1..<array.count) {
            for j in (0..<i) {
                if array[i] % array[j] == 0 && lengthsArray[j] >= lengthsArray[i] {
                    lengthsArray[i] = lengthsArray[j] + 1
                }
            }
        }
        
        return lengthsArray.max() ?? 0
    }
    
    func greaterSubsequenceLengthSolution() {
        let _ = Int(readLine() ?? "") ?? 0
        let array: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
        let length = greaterSubsequenceLength(array: array)
        print(length)
    }
}
