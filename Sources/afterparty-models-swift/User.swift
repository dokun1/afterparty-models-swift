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

extension User: Equatable {
  public static func == (lhs: User, rhs: User) -> Bool {
    return lhs.id == rhs.id && lhs.email == rhs.email
  }
}
