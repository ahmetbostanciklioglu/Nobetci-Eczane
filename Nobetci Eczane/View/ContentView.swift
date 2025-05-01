//
//  ContentView.swift
//  Nobetci Eczane
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = EczaneViewModel()
    @State private var selectedCity = "Ankara"
    @State private var selectedPharmacy: Pharmacy?
    
    var body: some View {
        NavigationView {
            List {
                if let data = viewModel.cities?.data {
                    Picker("Türkiye Şehirleri", selection: $selectedCity) {
                        ForEach(data, id: \.cities) { data in
                            Text(data.cities)
                                .font(.caption.weight(.medium))
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                Spacer()
                if let pharmacies = viewModel.pharmacies?.data {
                    ForEach(pharmacies, id: \.pharmacyID) { pharmacy in
                        NavigationLink {
                            DetailView(pharmacy: selectedPharmacy ?? pharmacies[0])
                        } label: {
                            VStack(alignment: .leading, spacing: 20) {
                                Text(pharmacy.pharmacyName)
                                Text(pharmacy.phone)
                            }
                            .onTapGesture {
                                selectedPharmacy = pharmacy
                            }
                        }

                    }
                }
            }
            .listStyle(.inset)
            .padding()
            .task {
                await viewModel.fetchData()
                await viewModel.fetchOnDutyPharmacies()
            }
        }
       
    }
}

#Preview {
    ContentView()
}
