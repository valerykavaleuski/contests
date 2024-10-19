/*
 
 Задача на программирование: различные слагаемые

 По данному числу  1 ≤ n ≤ 10^9 найдите максимальное число k, для которого n можно представить как сумму k различных натуральных слагаемых. Выведите в первой строке число k, во второй — k слагаемых.

 Sample Input 1:            Sample Input 2:
 4                          6
 
 Sample Output 1:           Sample Output 2:
 2                          3
 1 3                        1 2 3
 
 */

extension Solution {
    
    @_optimize(speed)
    func variousComponents(_ num: Int) -> [Int] {
        var uniqueComponents: [Int] = []
        var counter = 1
        var mutableNumber = num
        
        while mutableNumber >= (2 * counter) + 1 {
            uniqueComponents.append(counter)
            mutableNumber -= counter
            counter += 1
        }
        
        uniqueComponents.append(mutableNumber)
        return uniqueComponents
    }
    
    func variousComponentsSolution() {
        let num = Int(readLine() ?? "") ?? 0
        let result = variousComponents(num)
        print(result.count)
        print(result.map { String($0) }.joined(separator: " "))
    }
}
