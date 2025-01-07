//
//  CurrentWeatherView.swift
//  WeatherApplicationAssignment
//
//  Created by Gaddam, Nagatejesh on 07/01/25.
//
import SwiftUI

struct CurrentWeatherView: View {
    let weather: WeatherResponse.CurrentWeather

    var body: some View {
        VStack {
            Image(systemName: Utility.getWeatherIcon(condition: weather.condition.text))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
                .shadow(radius: 10)

            Text("\(weather.temp_c, specifier: Constant.temperatureSpecifierString)\(Constant.centigradeString)")
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(.white)
                .shadow(radius: 5)

            Text(weather.condition.text)
                .font(.title2)
                .foregroundColor(.black.opacity(0.7))
                .padding(.all, 5)
                .background(Color.white.opacity(0.3))
                .cornerRadius(10)
        }
        .padding(.vertical)
    }
}
