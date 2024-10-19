import XCTest

extension SolutionTests {
    
    func test_endlessBag() {
        let itemsInput: [(cost: Double, weight: Int)] = [(60,20), (100,50), (120,30)]
        let maxWeightInput: Int = 50
        let expectedOutput: Double = 180.000
        let output = sut.endlessBag(items: itemsInput, maxWeight: maxWeightInput)
        XCTAssertEqual(expectedOutput, output)
    }
    
    func test_endlessBag_rounding() {
        let itemsInput: [(cost: Double, weight: Int)] = [(3316,1601), (5375,8940), (2852,6912), (3336,9926), (1717, 8427)]
        let maxWeightInput: Int = 9022
        let expectedOutput: Double = 7777.731
        let output = sut.endlessBag(items: itemsInput, maxWeight: maxWeightInput)
        XCTAssertEqual(expectedOutput, output)
    }
}
