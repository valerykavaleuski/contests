/*
 
 Пример задачи на программирование

 В данной задаче требуется вычислить сумму двух входных целых чисел, лежащих в отрезке от нуля до десяти. Никаких подвохов, это очевидная задача, предназначенная для того, чтобы познакомить вас с проверяющей системой. На следующем степе приведены решения данной задачи на нескольких языках программирования (вы можете прямо сейчас перейти туда и скопировать решение оттуда). В этой задаче, как и во всех задачах на программирование, не нужно проверять, что входные данные удовлетворяют требованиям, заявленным в условии. Другими словами, во всех тестах, на которых будет проверяться ваша программа, на вход будут подаваться два целых числа от 0 до 10.
 
 Sample Input:
 7 3
 
 Sample Output:
 10
 
 */

extension Solution {
    
    @_optimize(speed)
    func stepikIntroSum(_ num1: Int, _ num2: Int) -> Int {
        num1 + num2
    }
    
    func stepikIntroSolution() {
        let input = readLine(strippingNewline: true)!
            .split(separator: " ")
            .compactMap { Int($0) }
            
        let result = stepikIntroSum(input[0], input[1])
        print(result)
    }
}
