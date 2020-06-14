//
//  Location.swift
//
//
//  Created by David Okun on 6/14/20.
//

import Foundation

public struct Location: Codable, Identifiable {
  public var id: UUID
  public var latitude: Double
  public var longitude: Double
}
