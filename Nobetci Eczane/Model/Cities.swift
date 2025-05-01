//
//  Eczane.swift
//  Nobetci Eczane
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation

// MARK: - Cities
struct Cities: Codable {
    let status, message, messageTR: String
    let systemTime: Int
    let endpoint: String
    let rowCount, creditUsed: Int
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let cities, slug: String
}
