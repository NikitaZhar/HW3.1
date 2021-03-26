//
//  ColorCircle.swift
//  TrafficLight
//
//  Created by Nikita Zharinov on 26/03/2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1.0)
    }
}
