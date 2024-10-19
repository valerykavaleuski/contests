/*
 
 Задача на программирование: кодирование Хаффмана
 
 По данной непустой строке s длины не более 10^4, состоящей из строчных букв латинского алфавита, постройте оптимальный беспрефиксный код. В первой строке выведите количество различных букв k, встречающихся в строке, и размер получившейся закодированной строки. В следующих k строках запишите коды букв в формате "letter: code". В последней строке выведите закодированную строку.
 
 Sample Input 1:                Sample Input 2:
 a                              abacabad
 
 Sample Output 1:               Sample Output 2:
 1 1                            4 14
 a: 0                           a: 0
 0                              b: 10
                                c: 110
                                d: 111
                                01001100100111
 
 */

extension Solution {
    
    @_optimize(speed)
    func huffmanCoding(_ string: String) -> (resultDict: [String: String], length: Int, binaryString: String) {
        var frequencyDict: [String: Int] = [:]
        
        for char in string {
            frequencyDict[String(char), default: 0] += 1
        }
        
        var binaryString = ""
        var sorted = frequencyDict.sorted(by: { $0.value > $1.value })
        var resultDict: [String: String] = frequencyDict.compactMapValues { _ in "" }
        var length: Int = 0
        
        if frequencyDict.count == 1 {
            // check if input contain only one letter
            resultDict[String(frequencyDict.first?.key ?? "")] = "0"
            length = frequencyDict.first?.value ?? 0
            string.forEach { letter in
                if let value = resultDict[String(letter)] {
                    binaryString += value
                }
            }
            
            return (resultDict, length, binaryString)
        }
        
        while sorted.count > 1 {
            // for last use bit 1
            // for before last use bit 0
            let last = sorted.removeLast()
            let beforeLast = sorted.removeLast()

            last.key.forEach { letter in
                if let value = resultDict[String(letter)] {
                    resultDict[String(letter)] = "1" + value
                }
            }
            
            beforeLast.key.forEach { letter in
                if let value = resultDict[String(letter)] {
                    resultDict[String(letter)] = "0" + value
                }
            }
                    
            let newKey = last.key + beforeLast.key
            let sliceLength = last.value + beforeLast.value
            let new: [String: Int] = [newKey: sliceLength]
            
            if sorted.last?.value == sliceLength {
                sorted.append(contentsOf: new)
            } else {
                sorted.insert(contentsOf: new, at: 0)
                sorted.sort(by: { $0.value > $1.value })
            }

            length += sliceLength
        }

        string.forEach { letter in
            if let value = resultDict[String(letter)] {
                binaryString += value
            }
        }

        return (resultDict, length, binaryString)
    }
    
    func huffmanCodingSolution() {
        let input = readLine()!
        let result = huffmanCoding(input)
        let letters = result.resultDict.count
        let length = result.length
        let binaryString = result.binaryString
        let resultDict = result.resultDict
        
        print(letters, length)
        
        resultDict
            .sorted(by: { $0.value.count < $1.value.count })
            .forEach { print("\($0): \($1)") }
        
        print(binaryString)
    }
}
