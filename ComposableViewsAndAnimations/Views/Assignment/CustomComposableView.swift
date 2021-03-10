//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    // MARK: Stored Properties
    
    // Color of the rectangle
    @State var hue: Double = Double.random(in: 1...360)
    
    // Controls offset
    @State var offset: CGFloat = 0
    
    // Angle of rotation
    @State var rotation: Double = 0
    
    // Initialize a timer that will fire in 0.01 seconds
    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    
    // Flag to use animations or not
    @State private var useAnimation = false
    
    
    // MARK: Computed Properties
    
    var complementaryHue: Double {
        if hue < 180 {
            return hue + 180
        } else if hue > 180 {
            return hue - 180
        } else {
            return 1.0
        }
    }
    
    var body: some View {
        
        VStack {

            Rectangle()
                .frame(width: 150.0, height: nil)
                .foregroundColor(Color(hue: complementaryHue, saturation: 0.8, brightness: 0.8))
                .padding(.vertical, 200)
                .rotationEffect(.degrees(90))
                .offset(x: 3, y: offset)
                .onAppear() {
                    rotation += 360
                }
        }
        .rotationEffect(.degrees(rotation))
        .animation(useAnimation ? .interpolatingSpring(stiffness: 6, damping: 2) : .none)
        .overlay(TextOverlay(message: "", fontSize: 25.0, hue: hue, offset: 500))
        .onReceive(timer) { input in
            
            // Set the flag to enable animations
            useAnimation = true
            
            // Stop the timer from continuing to fire
            timer.upstream.connect().cancel()
    }
    
    // MARK: Functions

}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
}
