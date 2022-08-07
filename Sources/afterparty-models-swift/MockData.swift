//
//  MockData.swift
//  
//
//  Created by David Okun on 6/14/20.
//

import Foundation

public struct MockData {
  struct MockLocation {
    struct Austin {
      static let schwabOffice = Location(coordinates: (30.407844, -97.713303))
      static let condo = Location(coordinates: (30.223162, -97.726532))
      static let ibmOffice = Location(coordinates: (30.391104, -97.721832))
      static let mour = Location(coordinates: (30.243683, -97.727219))
      static let universityOfTexas = Location(coordinates: (30.284971, -97.739296))
      static let elAlma = Location(coordinates: (30.259829, -97.754234))
    }
  }
  
  struct MockUsers {
    static let david = User(email: "david@user.com")
    static let candace = User(email: "candace@user.com")
    static let penny = User(email: "penny@user.com")
    static let dana = User(email: "dana@user.com")
    static let justin = User(email: "justin@user.com")
  }
  
  struct MockEvents {
    static let sundayDinner = Event(name: "Sunday Dinner")
    static let margaritas = Event(name: "Margarita Monday!")
    static let work = Event(name: "Sad Work Wednesday")
    static let comedyShow = Event(name: "Comedy Show")
    static let classTime = Event(name: "Back to School")
    static let wineTime = Event(name: "Mour wine please!")
    static let tacos = Event(name: "I want tacos!")
  }
  
  public static let sampleEvents = [MockEvents.classTime, MockEvents.comedyShow, MockEvents.margaritas, MockEvents.sundayDinner, MockEvents.tacos, MockEvents.wineTime, MockEvents.work]
  public static let currentUser = MockUsers.david
  public static let participants = [MockUsers.david, MockUsers.candace, MockUsers.penny]
  public static let southLocations = [MockLocation.Austin.condo, MockLocation.Austin.mour, MockLocation.Austin.elAlma, MockLocation.Austin.universityOfTexas]
}
