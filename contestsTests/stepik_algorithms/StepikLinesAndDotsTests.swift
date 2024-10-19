import XCTest

extension SolutionTests {
    
    func test_linesAndDots_sampleInput1_oneMatch() {
        let linesArrayInput: [(first: Int, last: Int)] = [(1,3), (2,5), (3,6)]
        let expectedOutputCount: Int = 1
        let expectedOutput: [Int] = [3]
        let output = sut.linesAndDots(linesArray: linesArrayInput)
        XCTAssertEqual(output.count, expectedOutputCount)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_linesAndDots_sampleInput2_twoMatches() {
        let linesArrayInput: [(first: Int, last: Int)] = [(4,7), (1,3), (2,5), (5,6)]
        let expectedOutputCount: Int = 2
        let expectedOutput: [Int] = [3,6]
        let output = sut.linesAndDots(linesArray: linesArrayInput)
        XCTAssertEqual(output.count, expectedOutputCount)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_linesAndDots_threeMatches() {
        let linesArrayInput: [(first: Int, last: Int)] = [(4,4), (5,9), (0,10), (2,8), (4,4), (12,14), (0,8), (3,14), (5,13), (4,6)]
        let expectedOutputCount: Int = 3
        let expectedOutput: [Int] = [4,9,14]
        let output = sut.linesAndDots(linesArray: linesArrayInput)
        XCTAssertEqual(output.count, expectedOutputCount)
        XCTAssertEqual(output, expectedOutput)
    }
}
