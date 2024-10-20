/*
 
 Задача на программирование: число инверсий
 
 Первая строка содержит число 1 ≤ n ≤ 10^5, вторая — массив A[1…n], содержащий натуральные числа, не превосходящие 10^9. Необходимо посчитать число пар индексов 1 ≤ i < j ≤ n, для которых A[i]>A[j]. (Такая пара элементов называется инверсией массива. Количество инверсий в массиве является в некотором смысле его мерой неупорядоченности: например, в упорядоченном по неубыванию массиве инверсий нет вообще, а в массиве, упорядоченном по убыванию, инверсию образуют каждые два элемента.)
 
 Sample Input:
 5
 2 3 9 2 9
 
 Sample Output:
 2
 
 */

extension Solution {
    typealias ArrayTuple = (array: [Int], inversions: Int)
    
    @_optimize(speed)
    private func merge(
        _ left: ArrayTuple,
        _ right: ArrayTuple
    ) -> ArrayTuple {
        // left / right - сортированные массивы и количество инверсий
        // количество инверсий не нужно для реализации сортировки
        // оно необходимо только для решения конкретной задачи
        var i = 0
        var j = 0
        var inversionCount: Int = 0
        var result = Array(repeating: 0, count: left.array.count + right.array.count)
        
        for k in 0..<result.count {
            // если выбрали все элементы из правого массива или
            // проверяем что не вышли за рамки массива и сравниваем i-й / j-й элементы
            if (j == right.array.count) || (i < left.array.count && left.array[i] <= right.array[j]) {
                result[k] = left.array[i]
                i += 1
            } else {
                // left[i] > right[j]
                inversionCount += (left.array.count - i)
                result[k] = right.array[j]
                j += 1
            }
        }
        
        return (result, (left.inversions + right.inversions + inversionCount))
    }
    
    @_optimize(speed)
    func mergeSort(_ arrayTuple: ArrayTuple) -> ArrayTuple {
        guard arrayTuple.array.count > 1 else {
           return arrayTuple
       }
       
        let middle = arrayTuple.array.count / 2
        var left = (Array(arrayTuple.array[0..<middle]), 0)
        var right = (Array(arrayTuple.array[middle..<arrayTuple.array.count]), 0)
        left = mergeSort(left)
        right = mergeSort(right)
        return merge(left, right)
   }

   func mergeSortSolution() {
       let _ = Int(readLine() ?? "") ?? 0
       let array = readLine()!.split(separator: " ").compactMap { Int($0) }
       let arrayTuple: (array: [Int], inversions: Int) = (array: array, inversions: 0)
       let result = mergeSort(arrayTuple)
       print(result.inversions)
   }
}
