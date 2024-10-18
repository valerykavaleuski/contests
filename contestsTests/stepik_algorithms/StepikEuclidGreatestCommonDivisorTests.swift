import XCTest

extension SolutionTests {
    
    func test_euclidGreatestCommonDivisor_noDivisor() {
        let aInput = 18
        let bInput = 35
        let expectedOutput = 1
        let output = sut.euclidGreatestCommonDivisorSolution(a: aInput, b: bInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_euclidGreatestCommonDivisor_hasDivisor() {
        let aInput = 14159572
        let bInput = 63967072
        let expectedOutput = 4
        let output = sut.euclidGreatestCommonDivisorSolution(a: aInput, b: bInput)
        XCTAssertEqual(output, expectedOutput)
    }
}
