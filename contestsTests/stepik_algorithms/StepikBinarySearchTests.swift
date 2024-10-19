import XCTest

extension SolutionTests {
    
    func testBinarySearch() {
        let arr1Input: [Int] = [1,5,8,12,13]
        let arr2Input: [Int] = [8,1,23,1,11,13,15,13,1]
        let expectedOutput: [Int] = [3,1,-1,1,-1,5,-1,5,1]
        let output = sut.binarySearch(arr1: arr1Input, arr2: arr2Input)
        XCTAssertEqual(output, expectedOutput)
    }
}
