/*
 
 Задача на программирование: небольшое число Фибоначчи
 
 Дано целое число 1 ≤ n ≤ 40, необходимо вычислить n-е число Фибоначчи (напомним, что F0 = 0, F1 = 1 и Fn = Fn−1 + Fn-2 при n ≥ 2).
 
 Sample Input:
 3
 
 Sample Output:
 2
 
 */

extension Solution {
    
    @_optimize(speed)
    func fibonacci(index: Int) -> Int {
        guard index >= 2 else {
            return index == 1 ? 1 : 0
        }
        
        var array: [Int] = Array(repeating: 0, count: index + 1)
        array[0] = 0
        array[1] = 1
        
        for i in 2...index {
            array[i] = array[i - 1] + array[i - 2]
        }
        
        return array[index]
    }
    
    func stepikFibonacciSolution() {
        let input = Int(readLine() ?? "") ?? 0
        let result = fibonacci(index: input)
        print(result)
    }
}
