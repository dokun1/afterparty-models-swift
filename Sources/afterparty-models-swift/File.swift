//
//  FoursquarePlace.swift
//  
//
//  Created by David Okun on 7/31/22.
//

import Foundation

public struct PlacesResponse: Decodable {
  public var results: [Place]
}

public struct PlaceCategory: Codable, Identifiable {
  public var id: Int
  public var name: String
}

public struct Place: Codable, Identifiable {
  public var id: String
  public var distance: Double
  public var name: String
  public var categories: [PlaceCategory]
  public var latitude: Double
  public var longitude: Double
  public var fullAddress: String
  
  enum CodingKeys: String, CodingKey {
    case id = "fsq_id"
    case distance
    case name
    case categories
    case geocodes
    case location
  }
  
  enum LocationCodingKeys: String, CodingKey {
    case address = "formatted_address"
  }
  
  enum GeocodeCodingKeys: String, CodingKey {
    case main
    case roof
  }
  
  enum LatLongCodingKeys: String, CodingKey {
    case latitude
    case longitude
  }
  
  public init(from decoder: Decoder) throws {
    do {
      let container = try decoder.container(keyedBy: CodingKeys.self)
      self.id = try container.decode(String.self, forKey: .id)
      self.name = try container.decode(String.self, forKey: .name)
      self.distance = try container.decode(Double.self, forKey: .distance)
      self.categories = try container.decode([PlaceCategory].self, forKey: .categories)
      let geocodeContainer = try container.nestedContainer(keyedBy: GeocodeCodingKeys.self, forKey: .geocodes)
      let mainContainer = try geocodeContainer.nestedContainer(keyedBy: LatLongCodingKeys.self, forKey: .main)
      self.latitude = try mainContainer.decode(Double.self, forKey: .latitude)
      self.longitude = try mainContainer.decode(Double.self, forKey: .longitude)
      let locationContainer = try container.nestedContainer(keyedBy: LocationCodingKeys.self, forKey: .location)
      self.fullAddress = try locationContainer.decode(String.self, forKey: .address)
    } catch {
      fatalError(error.localizedDescription)
    }
  }
  
  public func encode(to encoder: Encoder) throws {
    do {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(name, forKey: .name)
      try container.encode(distance, forKey: .distance)
      try container.encode(categories, forKey: .categories)
      var locationContainer = container.nestedContainer(keyedBy: LocationCodingKeys.self, forKey: .location)
      try locationContainer.encode(fullAddress, forKey: .address)
      var geocodeContainer = container.nestedContainer(keyedBy: GeocodeCodingKeys.self, forKey: .geocodes)
      var mainContainer = geocodeContainer.nestedContainer(keyedBy: LatLongCodingKeys.self, forKey: .main)
      try mainContainer.encode(latitude, forKey: .latitude)
      try mainContainer.encode(longitude, forKey: .longitude)
    } catch {
      print(error.localizedDescription)
      throw error
    }
  }
}
