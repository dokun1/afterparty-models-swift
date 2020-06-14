//
//  Event.swift
//
//
//  Created by David Okun on 6/14/20.
//

import Foundation

public struct Event: Codable, Identifiable {
  public var id: UUID
  public var name: String
  public var start: Date
  public var end: Date
  public var location: Location
}
