/*
 
 Задача на программирование: покрыть отрезки точками
 
 По данным n отрезкам необходимо найти множество точек минимального размера, для которого каждый из отрезков содержит хотя бы одну из точек.
 В первой строке дано число 1 ≤ n ≤ 100 отрезков. Каждая из последующих n строк содержит по два числа 0 ≤ l ≤ r ≤ 10^9, задающих начало и конец отрезка. Выведите оптимальное число m точек и сами m точек. Если таких множеств точек несколько, выведите любое из них.
 
 Sample Input 1:                Sample Input 2:
 3                              4
 1 3                            4 7
 2 5                            1 3
 3 6                            2 5
                                5 6
 
 Sample Output 1:               Sample Output 2:
 1                              2
 3                              3 6
 
 */

extension Solution {
    
    @_optimize(speed)
    func linesAndDots(linesArray: [(first: Int, last: Int)]) -> [Int] {
        var result: [Int] = []
        var sorted = linesArray.sorted(by: { $0.last < $1.last })
        var removedLine = sorted.removeFirst()
        result.append(removedLine.last)

        sorted.indices.forEach { index in
            if sorted[index].first > removedLine.last {
                removedLine = sorted[index]
                result.append(removedLine.last)

            }
        }
        
        return result
    }
    
    func stepikLinesAndDotsSolution() {
        var linesArray: [(first: Int, last: Int)] = []
        let lines = Int(readLine() ?? "") ?? 0

        for _ in 1...lines {
            let newLineArray = readLine()!.split(separator: " ").compactMap { Int($0) }
            let line: (Int, Int) = (newLineArray[0],  newLineArray[1])
            linesArray.append(line)
        }
        
        let result = linesAndDots(linesArray: linesArray)
        print(result.count)
        print(result.compactMap { String($0) }.joined(separator: " "))
    }
}
