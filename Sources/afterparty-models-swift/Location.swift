//
//  Location.swift
//
//
//  Created by David Okun on 6/14/20.
//

import Foundation

public struct Location: Codable, Identifiable {
  public init(coordinates: (Double, Double)) {
    self.id = UUID()
    self.latitude = coordinates.0
    self.longitude = coordinates.1
  }
  
  public var id: UUID
  public var latitude: Double
  public var longitude: Double
}
