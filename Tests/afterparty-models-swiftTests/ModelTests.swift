import XCTest
@testable import afterparty_models_swift

final class ModelTests: XCTestCase {
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct
    // results.
    let user1 = User(id: UUID(), email: "david@user.com", nickname: "David")
    let user2 = User(id: UUID(), email: "candace@user.com", nickname: "Candace")
    XCTAssertNotEqual(user1.id, user2.id, "both IDs should always be unique")
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
