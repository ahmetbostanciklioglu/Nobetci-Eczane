//
//  OnDutyLocation.swift
//  Nobetci Eczane
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation

// MARK: - Pharmacies
struct Pharmacies: Codable {
    let status, message, messageTR: String
    let systemTime: Int
    let endpoint: String
    let rowCount, creditUsed: Int
    let data: [Pharmacy]
}

// MARK: - Datum
struct Pharmacy: Codable {
    let pharmacyID: Int
    let pharmacyName, address: String
    let city: City
    let district, town: String
    let directions: String?
    let phone: String
    let phone2: Phone2?
    let pharmacyDutyStart, pharmacyDutyEnd: JSONNull?
    let latitude, longitude: Double
    let distanceMT: Int
    let distanceKM, distanceMil: Double

    enum CodingKeys: String, CodingKey {
        case pharmacyID, pharmacyName, address, city, district, town, directions, phone, phone2, pharmacyDutyStart, pharmacyDutyEnd, latitude, longitude
        case distanceMT = "distanceMt"
        case distanceKM = "distanceKm"
        case distanceMil
    }
}

enum City: String, Codable {
    case i̇zmir = "İzmir"
}

enum Phone2: String, Codable {
    case empty = ""
    case the02325020489 = "0 (232) 502-04-89"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
            return true
    }

    public var hashValue: Int {
            return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if !container.decodeNil() {
                    throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
            }
    }

    public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeNil()
    }
}
