import XCTest

extension SolutionTests {
    
    func test_greaterSubsequenceLength_hasSubsequence() {
        let arrayInput: [Int] = [3,6,12,7,9,24,18,3,9,24]
        let expectedOutput: Int = 5
        let output = sut.greaterSubsequenceLength(array: arrayInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_greaterSubsequenceLength_hasSubsequence2() {
        let arrayInput: [Int] = [3,6,7,12]
        let expectedOutput: Int = 3
        let output = sut.greaterSubsequenceLength(array: arrayInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_greaterSubsequenceLength_allEqual() {
        let arrayInput: [Int] = [3,3,3,3,3,3,3,3,3,3]
        let expectedOutput: Int = 10
        let output = sut.greaterSubsequenceLength(array: arrayInput)
        XCTAssertEqual(output, expectedOutput)
    }

    func test_greaterSubsequenceLength_hasDifferentSubsequences() {
        let arrayInput: [Int] = [2,2,3,6,12,8,16,32,64,768]
        let expectedOutput: Int = 7
        let output = sut.greaterSubsequenceLength(array: arrayInput)
        XCTAssertEqual(output, expectedOutput)
    }
}
