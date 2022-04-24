//
//  ContentView.swift
//  WheatherApp
//
//  Created by c94292a on 11/01/22.
//

import SwiftUI

struct ContentView: View {

    var prevision  : [WeatherDay] = [
        WeatherDay(dayOfTheWeek: "TUE", weatherIcon: "sun.max.fill", temperature: "39"),
        WeatherDay(dayOfTheWeek: "WED", weatherIcon: "cloud.sun.rain.fill", temperature: "36"),
        WeatherDay(dayOfTheWeek: "THU", weatherIcon: "cloud.bolt.rain.fill", temperature: "27"),
        WeatherDay(dayOfTheWeek: "FRI", weatherIcon: "cloud.sun.rain.fill", temperature: "29"),
        WeatherDay(dayOfTheWeek: "SAT", weatherIcon: "cloud.sun.rain.fill", temperature: "31"),
    ]
    
    @State private var isDarkMode : Bool = false
    
    var body: some View {
        ZStack{
            BackGrounView(isDarkMode: $isDarkMode)
            VStack{
                CityTextView(text: "Blumenau SC")
                CurrentClimaAndTemperature(temperature: "27", imageName: isDarkMode ? "cloud.moon.fill" : "cloud.sun.rain.fill")
                HStack{
                    ForEach(0..<prevision.count) {day in
                        WeatherDayView(weatherDay: prevision[day])
                    }
                }
                Spacer()
               
                Button {
                    isDarkMode.toggle()
                } label: {
                    ButtonView(foreGroundColor: .blue, backGroundColor: .white, text: "Change Day Time" )
                }

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

