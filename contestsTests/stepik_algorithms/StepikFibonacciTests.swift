import XCTest

extension SolutionTests {
    
    func test_stepikFibonacci_index0() {
        let indexInput = 0
        let expectedOutput = 0
        let output = sut.fibonacci(index: indexInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_stepikFibonacci_index1() {
        let indexInput = 1
        let expectedOutput = 1
        let output = sut.fibonacci(index: indexInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_stepikFibonacci_index2() {
        let indexInput = 2
        let expectedOutput = 1
        let output = sut.fibonacci(index: indexInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_stepikFibonacci_index3() {
        let indexInput = 3
        let expectedOutput = 2
        let output = sut.fibonacci(index: indexInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_stepikFibonacci_index14() {
        let indexInput = 14
        let expectedOutput = 377
        let output = sut.fibonacci(index: indexInput)
        XCTAssertEqual(output, expectedOutput)
    }

}
