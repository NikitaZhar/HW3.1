//
//  ContentView.swift
//  TrafficLight
//
//  Created by Nikita Zharinov on 26/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonPressed = false
    @State private var buttonTitle = ButtonTitle(buttonTitle: "START")
    @State private var currentLight = Color(.red)
    @State private var redCircle = ColorCircle(color: .red, opacity: 0.3)
    @State private var yellowCircle = ColorCircle(color: .yellow, opacity: 0.3)
    @State private var greenCircle = ColorCircle(color: .green, opacity: 0.3)
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                redCircle
                yellowCircle
                greenCircle
                Spacer()
                Button(action: { PressedButton() }, label: { buttonTitle } )
                .padding()
            }.padding()
        }
    }
    
    private func PressedButton() {
        if !buttonPressed {
            buttonPressed.toggle()
            buttonTitle.buttonTitle = "NEXT"
            redCircle.opacity = 1.0
            return
        }
        switch currentLight {
        case Color(.red):
            redCircle.opacity = 0.3
            yellowCircle.opacity = 1.0
            currentLight = Color(.yellow)
        case Color(.yellow):
            yellowCircle.opacity = 0.3
            greenCircle.opacity = 1.0
            currentLight = Color(.green)
        case Color(.green):
            greenCircle.opacity = 0.3
            redCircle.opacity = 1.0
            currentLight = Color(.red)
        default:
            return
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
