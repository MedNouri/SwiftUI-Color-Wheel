//
//  Knob.swift
//  SwiftUIColorWheel
//
//  Created by mohamed nouri on 18/4/2021.
//

import SwiftUI

struct Knob: View {
    
    @Binding var selection:Color
    var dragDiameter: CGFloat = 100
    @State private var offset = CGPoint(x: 0, y: 0)
    @State private var isDragging: Bool = false

    private var KnobWidth: CGFloat {
       isDragging ? 40 : 20
    }
    
    var body: some View {
       ZStack {

            Circle()
                .fill(Color(red: Double(offset.x), green: Double(offset.y), blue: Double(offset.y)))
            Circle()
            .strokeBorder(
                Color.white,
                lineWidth: 3
            )
        }
        .frame(width:KnobWidth,height: KnobWidth)
        .shadow(color: Color.gray.opacity(0.2), radius: 2)
        .offset(x: offset.x, y: offset.y)
        .animation(Animation.easeIn)
        .gesture(
            DragGesture(
                minimumDistance: 0 
            )
            .onChanged({ value in
                self.isDragging = true
                self.offset = value.location
                })
               .onEnded({ value in
                self.isDragging = false
                })
            )
    }
 
}

struct Knob_Previews: PreviewProvider {
    static var previews: some View {
        Knob(selection: .constant(.red))
    }
}
