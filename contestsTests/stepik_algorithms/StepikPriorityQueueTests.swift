import XCTest

extension SolutionTests {
    
    func test_priorityQueue() {
        let actionsInput: [String] = ["Insert 200", "Insert 10", "ExtractMax", "Insert 5", "Insert 500", "ExtractMax"]
        let expectedOutput: [Int] = [200, 500]
        let output = sut.priorityQueue(handle: actionsInput)
        XCTAssertEqual(output, expectedOutput)
    }
}
