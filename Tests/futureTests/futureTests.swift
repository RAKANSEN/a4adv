import XCTest
@testable import future

class futureTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(future_value(principal: 1500, apr: 2.1, years: 10))
        future_value.print_future
    }


    static var allTests : [(String, (futureTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
