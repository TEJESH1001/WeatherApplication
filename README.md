# WeatherApplication

Weather Application:

A simple and visually appealing iOS application built with SwiftUI and MVVM architecture to fetch and display the current weather and a 3-day forecast for a user-specified location. The app demonstrates proficiency in Swift and modern development practices, including async/await for API handling and user-friendly UI/UX design.

Features:

Search Functionality: Enter a city name to fetch the current weather and 3-day forecast.
Current Weather Details: Displays temperature, weather condition, and condition icon (e.g., sunny, cloudy).
3-Day Forecast: Provides maximum and minimum temperatures for each day.
Asynchronous API Integration: Uses async/await to handle network requests.
Error Handling: Gracefully handles invalid input, API errors with user-friendly messages.
Loading Indicator: Displays a loading spinner during API calls.
Responsive UI: Designed with SwiftUI to provide a seamless user experience.
Reusable Code: Follows the MVVM architecture for clean and scalable code.
Screenshots 

Installation:

Follow these steps to run the project:

Clone the Repository:
git clone <repository_url> or Download the Project
open WeatherApplicationAssignment.xcodeproj
Build and Run: Open the project in Xcode and run it on a simulator or a physical device.
Used "New York" city name as Default city name to display weather data for first time, please search with city names like London, Sweden, Paris etc.. to see the dynamic weather data from api.

Architecture:

The project follows the MVVM (Model-View-ViewModel) architecture to separate business logic, network calls, and UI components, making the code more readable and maintainable.

Model: Defines data structures matching the API response.
ViewModel: Handles business logic, performs API calls, and processes data for the View.
View: Displays weather data using SwiftUI components.

API Integration:

The app uses the OpenWeather API to fetch weather data. The following endpoints are used:

Weather Forecast: "https://api.weatherapi.com/v1/forecast.json"
JSON Parsing
Uses Codable for decoding the API response.

Dependencies:

SwiftUI: Used for building the user interface.
URLSession: For making API requests.
async/await: To handle asynchronous tasks seamlessly.

Author:

Gaddam Naga Tejesh

