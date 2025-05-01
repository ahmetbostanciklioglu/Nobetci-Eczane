//
//  DetailView.swift
//  Nobetci Eczane
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import SwiftUI

struct DetailView: View {
    let pharmacy: Pharmacy
    var body: some View {
        VStack {
            Text(pharmacy.pharmacyName)
            Text(pharmacy.phone)
            Text(pharmacy.address)
            Text(pharmacy.city.rawValue)
        }
    }
}

#Preview {
    //DetailView(pharmacy: <#T##Pharmacy#>)
}
