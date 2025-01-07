//
//  WeatherViewModel.swift
//  WeatherApplicationAssignment
//
//  Created by Gaddam, Nagatejesh on 06/01/25.
//


import Foundation

class WeatherViewModel: ObservableObject {
    @Published var currentWeather: WeatherResponse.CurrentWeather?
    @Published var forecast: [WeatherResponse.Forecast.ForecastDay] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    @MainActor
    func fetchWeather(for city: String) async { // Using async
        isLoading = true
        errorMessage = nil

        let urlString = "\(Constant.API.apiUrl)\(Constant.API.keyString)\(Constant.API.apiKey)\(Constant.API.qQueryString)\(city)\(Constant.API.daysqueryString)"
        
        guard let url = URL(string: urlString) else {
            isLoading = false
            errorMessage = Constant.invalidUrlMessage
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
            // Since this function is marked as @MainActor, we can directly update UI properties
            self.currentWeather = weatherResponse.current
            self.forecast = weatherResponse.forecast.forecastday
            self.isLoading = false
        } catch {
            // Updating error handling directly on the main actor
            self.isLoading = false
            self.errorMessage = Constant.invalidCityMessage
        }
    }
}
