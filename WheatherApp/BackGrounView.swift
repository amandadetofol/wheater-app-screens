//
//  BackGrounView.swift
//  WheatherApp
//
//  Created by c94292a on 11/01/22.
//

import SwiftUI

struct BackGrounView: View {
    
    @Binding var isDarkMode : Bool
    
    var body : some View {
        LinearGradient(colors: [isDarkMode ? .black : .blue,
                                isDarkMode ? .gray : .white],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
