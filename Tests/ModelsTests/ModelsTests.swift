import XCTest
@testable import afterparty-models-swift

final class ModelsTests: XCTestCase {
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct
    // results.
    XCTAssertEqual(Models().text, "Hello, World!")
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
