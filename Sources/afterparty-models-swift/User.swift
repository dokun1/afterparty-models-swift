//
//  User.swift
//
//
//  Created by David Okun on 6/14/20.
//

import Foundation

public struct User: Codable, Identifiable {
  public init(email: String) {
    self.id = UUID()
    self.email = email
    self.nickname = email
  }
  
  public var id: UUID
  public var email: String
  public var nickname: String
}
