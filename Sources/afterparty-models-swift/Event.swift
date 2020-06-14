//
//  Event.swift
//  
//
//  Created by David Okun on 6/14/20.
//

import Foundation

struct Event: Codable, Identifiable {
  var id: UUID
  var name: String
  var start: Date
  var end: Date
  var location: Location
}
