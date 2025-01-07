//
//  getWeatherIcon.swift
//  WeatherApplicationAssignment
//
//  Created by Gaddam, Nagatejesh on 07/01/25.
//

class Utility {
    static func getWeatherIcon(condition: String) -> String {
        let conditionEnum = Constant.WeatherCondition(rawValue: condition.lowercased()) ?? .unknown
        return conditionEnum.icon
    }
}
