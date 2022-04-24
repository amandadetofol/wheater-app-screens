//
//  CurrentClimaAndTemperatureView.swift
//  WheatherApp
//
//  Created by c94292a on 11/01/22.
//

import SwiftUI

struct CurrentClimaAndTemperature : View {
    
    var temperature : String
    var imageName : String
    
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size:70, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
    }
}
