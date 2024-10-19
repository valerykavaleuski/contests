import XCTest

extension SolutionTests {
    
    func test_huffmanCoding() {
        let input: String = "abacabad"
        let expectedOutputBinaryString: String = "01001100100111"
        let expectedOutputBinaryString2: String = "01001110100110"
        let expectedOutput: [String] = [expectedOutputBinaryString, expectedOutputBinaryString2]
        let expectedOutputLettersCount: Int = 4
        let expectedOutputLength: Int = 14
        let output = sut.huffmanCoding(input)
        XCTAssert(expectedOutput.contains(output.binaryString))
        XCTAssertEqual(output.length, expectedOutputLength)
        XCTAssertEqual(output.resultDict.count, expectedOutputLettersCount)
    }
}
