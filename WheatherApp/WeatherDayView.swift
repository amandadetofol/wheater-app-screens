//
//  WeatherDayView.swift
//  WheatherApp
//
//  Created by c94292a on 11/01/22.
//

import SwiftUI

struct WeatherDayView : View {
    var weatherDay : WeatherDay
    var body : some View {
        VStack{
            Text(weatherDay.dayOfTheWeek)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: weatherDay.weatherIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(weatherDay.temperature)°")
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
        }.padding(15)
    }
    
}
