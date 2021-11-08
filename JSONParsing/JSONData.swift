//
//  JSONData.swift
//  JSONParsing
//
//  Created by tambanco 🥳 on 08.11.2021.
//

import Foundation

struct JSONData: Codable {
    let id: Int
    let name: String?
    let username: String?
    let email: String?
    let address: Address
    let phone: String?
    let website: String?
    let company: Company
}

struct Address: Codable {
    let street: String?
    let suite: String?
    let city: String?
    let zipcode: String?
    let geo: GeoData
}

struct GeoData: Codable {
    let lat: String
    let lng: String
}

struct Company: Codable {
    let name: String?
    let catchPhrase: String?
    let bs: String?
}
