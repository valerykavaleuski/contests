import XCTest

extension SolutionTests {
    
    func test_huffmanDecoding() {
        let inputLettersCount: Int = 3
        let inputLength = 10
        let inputBinaryString = "0001111111"
        let inputArray: [(letter: String, binary: String)] = [("a", "1"), ("b", "01"), ("c", "00")]
        let expectedOutput = "cbaaaaaa"
        let output = sut.huffmanDecode(inputLength, array: inputArray, binary: inputBinaryString)
        XCTAssertEqual(output, expectedOutput)
        
    }
}
