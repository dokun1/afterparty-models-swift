//
//  Event.swift
//
//
//  Created by David Okun on 6/14/20.
//

import Foundation

public struct Event: Codable, Identifiable {
  public init(name: String, location: Location, end: Date = Calendar.current.date(byAdding: .day, value: 1, to: Date())!) {
    self.id = UUID()
    self.name = name
    self.end = end
    self.start = Date()
    self.location = location
  }
  
  public var id: UUID
  public var name: String
  public var start: Date
  public var end: Date
  public var location: Location
}
