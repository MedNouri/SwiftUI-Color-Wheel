//
//  ColorWheel.swift
//  SwiftUIColorWheel
//
//  Created by mohamed nouri on 18/4/2021.
//

import SwiftUI

struct ColorWheel: View {
    
    @State var selection:Color = .gray

    var body: some View {
        ZStack{
       GeometryReader{ frame in
       selection
        Wheel(selection: $selection)
        .overlay(
           Knob(selection: $selection, dragDiameter  : frame.frame(in: .global).maxX)
        )
            }
        }.edgesIgnoringSafeArea(.all)
    }
}


