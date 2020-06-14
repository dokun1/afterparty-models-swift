import XCTest
@testable import afterparty_models_swift

final class ModelTests: XCTestCase {
  func testUserIDsNotEqual() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct
    // results.
    let user1 = User(email: "david@user.com")
    let user2 = User(email: "candace@user.com")
    XCTAssertNotEqual(user1.id, user2.id, "both IDs should always be unique")
  }
  
  func testEventTimesAreValid() {
    let event = Event(name: "Sick party", location: Location(coordinates: (1, 1)))
    XCTAssertTrue(event.start < event.end, "End date should always be after start date")
  }
  
  static var allTests = [
    ("testUserIDsNotEqual", testUserIDsNotEqual),
    ("testEventTimesAreValid", testEventTimesAreValid)
  ]
}
