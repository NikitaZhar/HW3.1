//
//  Button.swift
//  TrafficLight
//
//  Created by Nikita Zharinov on 26/03/2021.
//

import SwiftUI

struct ButtonTitle: View {
    
    var buttonTitle: String
    
    var body: some View {
        Text(buttonTitle)
            .frame(width: 170, height: 50)
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(Color(.blue))
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTitle(buttonTitle: "START")
    }
}
