//
//  DuckModel.swift
//  randomduckimages
//
//  Created by Emre Taner  Çetinkaya on 26.08.2022.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let duckModel = try? newJSONDecoder().decode(DuckModel.self, from: jsonData)

import Foundation

// MARK: - DuckModel
struct DuckModel: Codable {
    let message: String
    let url: String
}
