//
//  WeatherView.swift
//  WeatherApplicationAssignment
//
//  Created by Gaddam, Nagatejesh on 06/01/25.
//


import SwiftUI

struct WeatherView: View {
    
    @StateObject private var viewModel = WeatherViewModel()
    @State private var city: String = Constant.defaultCityName // taken "New York" as Default city here, please try other values like Paris, London, Sweden etc.. while runtime.
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                VStack(spacing: 20) {
                    SearchBar(city: $city, onSearch: {
                        Task {
                            await viewModel.fetchWeather(for: city) //Using await
                        }
                    })
                    WeatherContent(viewModel: viewModel)
                    Spacer()
                }
                .padding()
                .navigationBarTitle(Constant.navigationBarTitle, displayMode: .inline)
                .foregroundColor(.white)
            }
        }.onAppear(perform: {
            Task {
                await viewModel.fetchWeather(for: city) //Using await
            }
        })
    }
}

#Preview {
    WeatherView()
}
