//
//  Constant.swift
//  WeatherApplicationAssignment
//
//  Created by Gaddam, Nagatejesh on 07/01/25.
//

import Foundation

struct Constant {
    
    static let invalidUrlMessage = "Invalid URL"
    static let invalidCityMessage = "Please enter valid city name."
    static let temperatureSpecifierString = "%.1f"
    static let centigradeString = "°C"
    static let threeDayForecastTitle = "3-Day Forecast"
    static let highTemperatureString = "H: "
    static let lowTemperatureString = "L: "
    static let cityNamePlaceholder = "Enter city name"
    static let searchButtonTitle = "Search"
    static let fetchingWeatherString = "Fetching Weather..."
    static let defaultCityName = "New York"
    static let navigationBarTitle = "Weather App"
    
    struct API {
        
        static let apiKey = "73b56056dfa542e5a70153658240207"
        static let apiUrl = "https://api.weatherapi.com/v1/forecast.json"
        static let keyString = "?key="
        static let qQueryString = "&q="
        static let daysqueryString = "&days=3"
    }
    
    enum WeatherCondition: String {
        case clear = "clear"
        case sunny = "sunny"
        case cloudy = "cloudy"
        case rain = "rain"
        case snow = "snow"
        case thunderstorm = "thunderstorm"
        case unknown = "unknown"
        
        var icon: String {
            switch self {
            case .clear, .sunny:
                return "sun.max.fill"
            case .cloudy:
                return "cloud.fill"
            case .rain:
                return "cloud.rain.fill"
            case .snow:
                return "snow"
            case .thunderstorm:
                return "cloud.bolt.fill"
            case .unknown:
                return "cloud.fill"
            }
        }
    }
}
