//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    // MARK: Stored Properties
    
    // The message that will be shown
    @State var message: String = ""
    
    // The size of the font
    @State var fontSize: Double = 25.0
    
    // Color of the text
    @State var hue: Double = Double.random(in: 1...360)
    
    // Controls offset
    @State var offset: CGFloat = 0
    
    // Angle of rotation
    @State var rotation: Double = 0
    
    // MARK: Computed Properties
    
    var complementaryHue: Double {
        if hue > 180 {
            return hue - 180
        } else {
            return hue + 180
        }
    }
    
    var body: some View {
        
        VStack {

            Rectangle()
                .frame(width: 150.0, height: nil)
                .foregroundColor(Color(hue: (complementaryHue / 360), saturation: 0.8, brightness: 0.8))
                .padding(.vertical, 225.0)
                .rotationEffect(.degrees(90))
                .offset(x: 3, y: offset)
                .onAppear() {
                    rotation += 360
                }
        }
        .rotationEffect(.degrees(rotation))
        .animation(.interpolatingSpring(stiffness: 6, damping: 2))
        .overlay(TextOverlay())
    }
    
    // MARK: Functions

}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
