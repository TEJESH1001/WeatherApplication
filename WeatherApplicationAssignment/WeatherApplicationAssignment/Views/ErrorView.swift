//
//  ErrorView.swift
//  WeatherApplicationAssignment
//
//  Created by Gaddam, Nagatejesh on 07/01/25.
//
import SwiftUI

struct ErrorView: View {
    let message: String

    var body: some View {
        Text(message)
            .foregroundColor(.red)
            .multilineTextAlignment(.center)
            .padding()
            .background(Color.white.opacity(0.8))
            .cornerRadius(10)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}
