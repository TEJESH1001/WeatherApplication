//
//  ForecastView.swift
//  WeatherApplicationAssignment
//
//  Created by Gaddam, Nagatejesh on 07/01/25.
//
import SwiftUI

struct ForecastView: View {
    let forecast: [WeatherResponse.Forecast.ForecastDay]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(Constant.threeDayForecastTitle)
                .font(.title2)
                .foregroundColor(.black.opacity(0.7))
                .bold()
                .padding(.bottom, 5)

            ForEach(forecast, id: \.date) { day in
                HStack {
                    VStack(alignment: .leading) {
                        Text(day.date)
                            .font(.headline)
                            .foregroundColor(.black.opacity(0.7))
                        Text(day.day.condition.text)
                            .foregroundColor(.black.opacity(0.7))
                    }
                    Spacer()
                    VStack {
                        Text("\(Constant.highTemperatureString)\(day.day.maxtemp_c, specifier: Constant.temperatureSpecifierString)\(Constant.centigradeString)")
                            .foregroundColor(.red)
                        Text("\(Constant.lowTemperatureString)\(day.day.mintemp_c, specifier: Constant.temperatureSpecifierString)\(Constant.centigradeString)")
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                .background(Color.white.opacity(0.3))
                .cornerRadius(10)
            }
        }
        .padding(.horizontal)
    }
}
