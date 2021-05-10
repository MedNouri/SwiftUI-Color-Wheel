//
//  DemoUse.swift
//  SwiftUIColorWheel
//
//  Created by mohamed nouri on 6/5/2021.
//

import SwiftUI

struct DemoUse: View {
    @State var selection:Color = .red

    var body: some View {
        NavigationView {
            ScrollView{
                 ColorWheel(selection:selection , isDebug: false)
            }
            .navigationTitle("Color Wheel Demo")
            .navigationBarItems(trailing:  Circle().fill(selection).frame(width: 30, height: 30) )
            
        }
     }
}

struct DemoUse_Previews: PreviewProvider {
    static var previews: some View {
        DemoUse()
    }
}
