//
//  ColorWheel.swift
//  SwiftUIColorWheel
//
//  Created by mohamed nouri on 18/4/2021.
//

import SwiftUI

struct Wheel: View {
    
    @Binding var selection:Color
    
    let gradient:Gradient = {
        Gradient(colors:
        Array(0...255).map {
            Color(hue:Double($0)/255 , saturation: 1, brightness: 1)
            }
        )
    }()
 
    var body: some View {
        ZStack {
            Circle()
                .fill(AngularGradient(  gradient:gradient, center: .center))
                .blur(radius: 20)
                .overlay(
                   Circle()
                    .strokeBorder(Color.gray.opacity(0.3),lineWidth: 5.0)
                )
        }
     }
}

struct ColorWheel_Previews: PreviewProvider {
    static var previews: some View {
        Wheel(selection: .constant(.red))
    }
}
