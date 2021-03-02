//
//  TextOverlay.swift
//  ComposableViewsAndAnimations
//
//  Created by Brad Kang on 2021-03-01.
//

import SwiftUI

struct TextOverlay: View {
    
    // The message that will be shown
    @State var message: String = ""
    
    // The size of the font
    @State var fontSize: Double
    
    // Color of the text
    @State var hue: Double
    
    // Controls offset
    @State var offset: CGFloat
    
    var body: some View {
        
        ZStack {
        Text(message)
            .foregroundColor(Color(hue: hue, saturation: 0.8, brightness: 0.8))
            .font(.custom(message, size: CGFloat(fontSize)))
            .multilineTextAlignment(.center)
            .offset(x: 0, y: offset)
            .onAppear() {
                message = encouragingWords[Int.random(in: 0...5)]
                fontSize = Double.random(in: 30...45)
                offset -= 500
                hue /= 360
        }
            .animation(.interpolatingSpring(stiffness: 7, damping: 2, initialVelocity: 6))
        }
    }
}

struct TextOverlay_Previews: PreviewProvider {
    static var previews: some View {
        TextOverlay(fontSize: 25.0, hue: 0.0, offset: 500)
    }
}
