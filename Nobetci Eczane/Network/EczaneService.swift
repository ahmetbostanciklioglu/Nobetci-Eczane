//
//  EczaneService.swift
//  Nobetci Eczane
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation


actor EczaneService {
    static let shared = EczaneService()
    
    private init() { }
    
    func fetchEczaneService<T: Decodable>(url: Endpoint) async throws -> T {
        let (data, response) = try await URLSession.shared.data(for: url.request)
        
        guard let response  = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        return try JSONDecoder().decode(T.self, from: data)
    }
}


enum NetworkError: Error {
    case invalidURL, invalidResponse
}
