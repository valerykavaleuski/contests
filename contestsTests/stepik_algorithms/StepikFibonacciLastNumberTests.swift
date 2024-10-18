import XCTest

extension SolutionTests {
    
    func test_stepikFibonacciLastNumber_index1() {
        let indexInput = 1
        let expectedOutput = 1
        let output = sut.fibonacciLastNumber(index: indexInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_stepikFibonacciLastNumber_index0() {
        let indexInput = 0
        let expectedOutput = 0
        let output = sut.fibonacciLastNumber(index: indexInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_stepikFibonacciLastNumber_index14() {
        let indexInput = 14
        let expectedOutput = 7
        let output = sut.fibonacciLastNumber(index: indexInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_stepikFibonacciLastNumber_index841645() {
        let indexInput = 841645
        let expectedOutput = 5
        let output = sut.fibonacciLastNumber(index: indexInput)
        XCTAssertEqual(output, expectedOutput)
    }
}
