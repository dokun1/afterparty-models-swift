//
//  User.swift
//
//
//  Created by David Okun on 6/14/20.
//

import Foundation

struct User: Codable, Identifiable {
  var id: UUID
  var email: String
  var nickname: String
}
