/*

 Задача на программирование: непрерывный рюкзак
 
 Первая строка содержит количество предметов  1 ≤ n ≤ 10^3 и вместимость рюкзака 0 ≤ W ≤ 2⋅10^6. Каждая из следующих n строк задаёт стоимость  0 ≤ Ci ≤ 2⋅10^6 и объём  0 < Wi ≤ 2⋅10^6  предмета (n, W, Ci, Wi - целые числа). Выведите максимальную стоимость частей предметов (от каждого предмета можно отделить любую часть, стоимость и объём при этом пропорционально уменьшатся), помещающихся в данный рюкзак, с точностью не менее трёх знаков после запятой.
 
 
 Sample Input:
 3 50
 60 20
 100 50
 120 30
 
 Sample Output:
 180.000
 
*/

import Foundation

extension Solution {
    
    @_optimize(speed)
    func endlessBag(items: [(cost: Double, weight: Int)], maxWeight: Int) -> Double {
        var result: Double = 0
        var currentWeight: Int = 0
        let sorted = items.sorted(by: { ($0.0 / Double($0.1)) > ($1.0 / Double($1.1)) })

        for i in 0..<sorted.count {
            if currentWeight < maxWeight {
                let weight = min(sorted[i].weight, (maxWeight - currentWeight))
                let cost = (sorted[i].cost / Double(sorted[i].weight)) * Double(weight)
                currentWeight += weight
                result += cost
            }
        }
        
        return Double(round(1000 * result) / 1000)
    }
    
    func endlessBagSolution() {
        var items: [(cost: Double, weight: Int)] = []
        let input = readLine()!.split(separator: " ").compactMap { Int($0) }
        let lines: Int = input[0]
        let maxWeight: Int = input[1]

        for _ in 1...lines {
            let newLineArray = readLine()!.split(separator: " ")
            let cost = Double(newLineArray[0]) ?? 0
            let weight = Int(newLineArray[1]) ?? 0
            let item: (Double, Int) = (cost, weight)
            items.append(item)
        }
        
        let result = endlessBag(items: items, maxWeight: maxWeight)
        print(result)
    }
}
