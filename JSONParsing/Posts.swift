//
//  Posts.swift
//  JSONParsing
//
//  Created by tambanco 🥳 on 08.11.2021.
//

import Foundation

struct Posts: Codable {
    let userId: Int
    let id: Int
    let title: String?
    let body: String?
}
