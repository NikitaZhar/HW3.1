//
//  ContentView.swift
//  TrafficLight
//
//  Created by Nikita Zharinov on 26/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    enum light {
        case red
        case yellow
        case green
    }
    
    @State private var buttonPressed = false
    @State private var buttonTitle = "START"
    @State private var currentLight = Color(.red)
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                
                
                ColorCircle(color: .red, opacity: 0.3)

                ColorCircle(color: .yellow, opacity: 0.3)

                ColorCircle(color: .green, opacity: 0.3)
                    
                Spacer()
                Button(action: { PressedButton() }, label: {
                    Text(buttonTitle)
                        .frame(width: 170, height: 50)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(Color(.blue))
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
                })
                .padding()
            }.padding()
        }
    }
    private func PressedButton() {
        if !buttonPressed {
            buttonPressed.toggle()
            buttonTitle = "NEXT"
        }
//        switch currentLight {
//        case .red:
//            <#code#>
//        case .yellow:
//            <#code#>
//        case .green:
//            <#code#>
//        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
