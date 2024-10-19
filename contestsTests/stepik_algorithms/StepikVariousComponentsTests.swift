import XCTest

extension SolutionTests {
    
    func test_variousComponents_2components() {
        let numInput: Int = 4
        let expectedOutputCount = 2
        let expectedOutput: [Int] = [1,3]
        let output = sut.variousComponents(numInput)
        XCTAssertEqual(output.count, expectedOutputCount)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_variousComponents_10components() {
        let numInput: Int = 60
        let expectedOutputCount = 10
        let expectedOutput: [Int] = [1,2,3,4,5,6,7,8,9,15]
        let output = sut.variousComponents(numInput)
        XCTAssertEqual(output.count, expectedOutputCount)
        XCTAssertEqual(output, expectedOutput)
    }
}
