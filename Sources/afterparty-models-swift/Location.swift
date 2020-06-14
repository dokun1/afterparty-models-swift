//
//  Location.swift
//  
//
//  Created by David Okun on 6/14/20.
//

import Foundation

struct Location: Codable, Identifiable {
  var id: UUID
  var latitude: Double
  var longitude: Double
}
