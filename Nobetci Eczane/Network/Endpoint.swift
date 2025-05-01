//
//  Endpoint.swift
//  Nobetci Eczane
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation


enum Endpoint {
    case cities, onDuty
    
    var path: String {
        switch self {
        case .cities:
            "/pharmacies-on-duty/cities"
        case .onDuty:
            "/pharmacies-on-duty/locations?latitude=38.432561&longitude=27.143503"
        }
    }
    
    var fullPath: String {
        return  Constants.baseURL + path
    }
    
    var request: URLRequest {
        let urlComponents = URLComponents(string: fullPath)!
        
        let url = urlComponents.url
        
        var urlRequest = URLRequest(url: url!)
        urlRequest.httpMethod = "GET"
        urlRequest.addValue(Constants.apiKey, forHTTPHeaderField: "Authorization")
        
        return urlRequest
        
    }
}
