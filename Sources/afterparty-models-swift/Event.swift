//
//  Event.swift
//
//
//  Created by David Okun on 6/14/20.
//

import Foundation

public struct EventSubmissionResponse: Codable {
  public var objectId: String
}

public struct EventResponse: Codable {
  public var results: [Event]
}

public struct Event: Codable {
  public init(name: String, end: Date = Calendar.current.date(byAdding: .day, value: 1, to: Date())!) {
    self.name = name
    self.end = end
    self.description = ""
    self.start = Date()
  }
  
  public init() {
    self.start = Date()
    self.name = ""
    self.description = ""
    self.end = Date().addingTimeInterval(86400)
  }
  
  public var objectId: String? = nil
  public var name: String
  public var start: Date
  public var end: Date
  public var description: String
  public var place: Place? = nil
  
  public var isDirty: Bool {
    !name.isEmpty || !description.isEmpty || place != nil
  }
  
  public var isSubmissible: Bool {
    !name.isEmpty && !description.isEmpty && place != nil
  }
}

extension Event: Equatable {
  public static func == (lhs: Event, rhs: Event) -> Bool {
    return lhs.objectId == rhs.objectId &&
      lhs.start == rhs.start &&
      lhs.end == rhs.end &&
      lhs.place?.id == rhs.place?.id
  }
}
