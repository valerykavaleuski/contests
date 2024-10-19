/*
 
 Задача на программирование: декодирование Хаффмана

 Восстановите строку по её коду и беспрефиксному коду символов.
 В первой строке входного файла заданы два целых числа k и l через пробел — количество различных букв, встречающихся в строке, и размер получившейся закодированной строки, соответственно. В следующих k строках записаны коды букв в формате "letter: code". Ни один код не является префиксом другого. Буквы могут быть перечислены в любом порядке. В качестве букв могут встречаться лишь строчные буквы латинского алфавита; каждая из этих букв встречается в строке хотя бы один раз. Наконец, в последней строке записана закодированная строка. Исходная строка и коды всех букв непусты. Заданный код таков, что закодированная строка имеет минимальный возможный размер.
 
 В первой строке выходного файла выведите строку s. Она должна состоять из строчных букв латинского алфавита. Гарантируется, что длина правильного ответа не превосходит 10^4 символов.
 
 Sample Input 1:                Sample Input 2:
 4 14                           1 1
 a: 0                           a: 0
 b: 10                          0
 c: 110
 d: 111
 01001100100111
 
 Sample Output 1:               Sample Output 2:
 abacabad                       a
 
 */

extension Solution {
    
    @_optimize(speed)
    func huffmanDecode(_ length: Int, array: [(letter: String, binary: String)], binary: String) -> String {
        let binaries = array.map { $0.binary }
        var result = ""
        var prefix = ""
        
        binary.forEach { letter in
            
            if binaries.first(where: { $0.hasPrefix(prefix + String(letter)) }) != nil {
                prefix += String(letter)
            } else {
                if let item = array.first(where: { $0.binary == prefix }) {
                    result += item.letter
                }
                
                prefix = String(letter)
            }
        }
        
        if let item = array.first(where: { $0.binary == prefix }) {
            result += item.letter
        }
        
       return result
    }
    
    func huffmanDecodeSolution() {
        let firstLineInput = readLine()!.split(separator: " ").compactMap { Int($0) }
        let length = firstLineInput[1]
        let lines = firstLineInput[0]
        var array: [(letter: String, binary: String)] = []

        for _ in 1...lines {
            let newLineArray = readLine()!.split(separator: ": ")
            let key = String(newLineArray[0])
            let value = String(newLineArray[1])
            let tuple: (letter: String, binary: String) = (key, value)
            array.append(tuple)
        }

        let binaryString = readLine()!
        print(huffmanDecode(length, array: array, binary: binaryString))
    }
}
