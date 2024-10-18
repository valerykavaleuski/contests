/*
 
 Задача на программирование: последняя цифра большого числа Фибоначчи
 
 Дано число 1≤ n ≤ 10^7, необходимо найти последнюю цифру n-го числа Фибоначчи.
 Как мы помним, числа Фибоначчи растут очень быстро, поэтому при их вычислении нужно быть аккуратным с переполнением. В данной задаче, впрочем, этой проблемы можно избежать, поскольку нас интересует только последняя цифра числа Фибоначчи: если  0 ≤ a, b ≤ 9 — последние цифры чисел  Fi и Fi+1 соответственно, то  (a+b)mod10 — последняя цифра числа  Fi+2.

 Sample Input:
 841645
 
 Sample Output:
 5
 
 */

extension Solution {
    
    func stepikFibonacciLastNumberSolution() {
        let input = Int(readLine() ?? "") ?? 0

        print(fibonacciLastNumber(index: input))
    }
    
    @_optimize(speed)
    func fibonacciLastNumber(index: Int) -> Int {
        guard index >= 2 else {
            return index == 1 ? 1 : 0
        }
        
        var array: [Int] = Array(repeating: 0, count: index + 1)
        array[0] = 0
        array[1] = 1
        
        for i in 2...index {
            array[i] = (array[i - 1] + array[i - 2]) % 10
        }
        
        return array[index]
    }
}
