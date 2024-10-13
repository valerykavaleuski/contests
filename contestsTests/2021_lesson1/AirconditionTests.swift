import XCTest

extension SolutionTests {
    
    func test_aircondition_heat() {
        let troomInput = 10
        let tcondInput = 20
        let modeInput = "heat"
        let expectedOutput = 20
        let output = sut.aircondition(troom: troomInput, tcond: tcondInput, mode: modeInput)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_aircondition_freeze() {
        let troomInput = 20
        let tcondInput = 10
        let modeInput = "freeze"
        let expectedOutput = 10
        let output = sut.aircondition(troom: troomInput, tcond: tcondInput, mode: modeInput)
        XCTAssertEqual(output, expectedOutput)
    }
}
