import XCTest

extension SolutionTests {
    
    func test_stepikIntro() {
        let num1Input = 7
        let num2Input = 3
        let expectedOutput = 10
        let output = sut.stepikIntroSum(num1Input, num2Input)
        XCTAssertEqual(output, expectedOutput)
    }
}
