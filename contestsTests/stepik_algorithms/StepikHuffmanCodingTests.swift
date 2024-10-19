import XCTest

extension SolutionTests {
    
    func test_huffmanCoding() {
        let input: String = "abacabad"
        let expectedOutputBinaryString: String = "01001100100111"
        let expectedOutputLettersCount: Int = 4
        let expectedOutputLength: Int = 14
        let output = sut.huffmanCoding(input)
        XCTAssertEqual(output.binaryString, expectedOutputBinaryString)
        XCTAssertEqual(output.length, expectedOutputLength)
        XCTAssertEqual(output.resultDict.count, expectedOutputLettersCount)
    }
}
