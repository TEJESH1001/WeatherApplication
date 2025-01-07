//
//  WeatherContent.swift
//  WeatherApplicationAssignment
//
//  Created by Gaddam, Nagatejesh on 07/01/25.
//
import SwiftUI

struct WeatherContent: View {
    
    @ObservedObject var viewModel: WeatherViewModel

    var body: some View {
        if viewModel.isLoading {
            ProgressView(Constant.fetchingWeatherString)
                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                .scaleEffect(1.5)
                .padding()
        } else if let errorMessage = viewModel.errorMessage {
            ErrorView(message: errorMessage)
        } else {
            VStack(spacing: 20) {
                if let currentWeather = viewModel.currentWeather {
                    CurrentWeatherView(weather: currentWeather)
                }
                if !viewModel.forecast.isEmpty {
                    ForecastView(forecast: viewModel.forecast)
                }
            }
        }
    }
}
