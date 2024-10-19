/*
 
 Задача на программирование: наибольший общий делитель

 По данным двум числам  1 ≤ a, b ≤ 2 * 10^9 найдите их наибольший общий делитель.

 Sample Input 1:                Sample Input 2:
 18 35                          14159572 63967072
 
 Sample Output 1:               Sample Output 2:
 1                              4
 
 */

extension Solution {
    
    @_optimize(speed)
    func euclidGreatestCommonDivisorSolution(a: Int, b: Int) -> Int {
        guard a >= 0 else {
            return b
        }
        
        guard b >= 0 else {
            return a
        }
        
        var mutableA = a
        var mutableB = b
        while mutableA != mutableB {
            if mutableA == 0 {
                return mutableB
            }
            
            if mutableB == 0 {
                return mutableA
            }
            
            if mutableA > mutableB {
                mutableA = mutableA % mutableB
            } else {
                mutableB = mutableB % mutableA
            }
        }
        
        return mutableA
    }
    
    func stepikEuclidGreatestCommonDivisorSolution() {
        let input = readLine()!.split(separator: " ").compactMap { Int($0) }
        let a = input[0]
        let b = input[1]
        let result = euclidGreatestCommonDivisorSolution(a: a, b: b)
        print(result)
    }
}
