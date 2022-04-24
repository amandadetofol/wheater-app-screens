//
//  ButtonView.swift
//  WheatherApp
//
//  Created by c94292a on 11/01/22.
//

import SwiftUI

struct ButtonView : View {
    
    var foreGroundColor : Color
    var backGroundColor : Color
    var text : String
    
    var body : some View {
        Text(text)
            .frame(width: 280, height: 50)
            .background(backGroundColor)
            .foregroundColor(foreGroundColor)
            .font(.system(size:16,weight: .medium, design: .rounded))
            .cornerRadius(10)

    }
}
