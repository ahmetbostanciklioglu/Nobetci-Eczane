//
//  EczaneViewModel.swift
//  Nobetci Eczane
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation


class EczaneViewModel: ObservableObject {
    @Published var cities: Cities?
    @Published var pharmacies: Pharmacies?
    
    var service = EczaneService.shared
    
    func fetchData() async {
        do {
            cities = try await service.fetchEczaneService(url: .cities)
        } catch {
            print(error.localizedDescription)
          
        }
    }
    
    func fetchOnDutyPharmacies() async {
        do {
            pharmacies = try await service.fetchEczaneService(url: .onDuty)
            print("\(pharmacies)")
        } catch {
            print(error.localizedDescription)
            print(DataError.invalidData)
        }
    }
}


enum DataError: Error {
    case invalidData
}
