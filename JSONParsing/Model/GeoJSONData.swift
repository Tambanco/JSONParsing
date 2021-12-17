//
//  GeoJSONData.swift
//  JSONParsing
//
//  Created by tambanco 🥳 on 08.11.2021.
//

import Foundation

struct GeoJSONData: Codable {
    let type: String?
    let properties: Properties
    let geometry: Geometry
}

struct Properties: Codable {
    
}

struct Geometry: Codable {
    let type: String?
    let coordinates: [[[[Coordinates]]]]
}

struct Coordinates: Codable {
    let _latitude : Double
    let _longitude : Double
}
