//
//  CityTextView.swift
//  WheatherApp
//
//  Created by c94292a on 11/01/22.
//

import SwiftUI
struct CityTextView : View {
    
    var text : String

    var body : some View {
        Text(text)
            .font(.system(size:32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
