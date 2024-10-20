import XCTest

extension SolutionTests {
    
    func test_mergeSort() {
        let arrayInput: [Int] =  [2,3,9,2,9]
        let expectedArrayOutput: [Int] = [2,2,3,9,9]
        let expectedInversionsCountOutput: Int = 2
        let output = sut.mergeSort((arrayInput, 0))
        XCTAssertEqual(output.array, expectedArrayOutput)
        XCTAssertEqual(output.inversions, expectedInversionsCountOutput)
    }
    
    func test_mergeSort_noInversions() {
        let arrayInput: [Int] =  [2,3,9,10,11]
        let expectedArrayOutput: [Int] = [2,3,9,10,11]
        let expectedInversionsCountOutput: Int = 0
        let output = sut.mergeSort((arrayInput, 0))
        XCTAssertEqual(output.array, expectedArrayOutput)
        XCTAssertEqual(output.inversions, expectedInversionsCountOutput)
    }
}
