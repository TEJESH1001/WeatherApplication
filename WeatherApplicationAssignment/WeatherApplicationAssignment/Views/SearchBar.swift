//
//  SearchBar.swift
//  WeatherApplicationAssignment
//
//  Created by Gaddam, Nagatejesh on 07/01/25.
//

import SwiftUI

struct SearchBar: View {
    @Binding var city: String
    let onSearch: () -> Void

    var body: some View {
        HStack {
            TextField(Constant.cityNamePlaceholder, text: $city)
                .foregroundStyle(Color.black)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(10)
                .background(Color.white.opacity(0.9))
                .cornerRadius(10)
                .shadow(radius: 5)

            Button(action: onSearch) {
                Text(Constant.searchButtonTitle)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
        }
        .padding(.horizontal)
    }
}
