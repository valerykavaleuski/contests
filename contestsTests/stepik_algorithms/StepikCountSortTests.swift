import XCTest

extension SolutionTests {
    
    func test_countSort() {
        let arrayInput: [Int] =  [2,3,9,2,9]
        let expectedOutput: [Int] = [2,2,3,9,9]
        let output = sut.countSort(arrayInput)
        XCTAssertEqual(output, expectedOutput)
    }
}
