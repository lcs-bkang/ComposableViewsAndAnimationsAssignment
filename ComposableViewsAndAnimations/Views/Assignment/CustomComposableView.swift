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
    @State var hue: Double = 60.0
    
    // Controls offset
    @State var offset: CGFloat = 0
    
    // MARK: Computed Properties
    
    var complementaryHue: Hue {
        return Hue(base: hue, offset: 180)
    }
    
    var body: some View {
        
        VStack {
            

            Rectangle()
                .frame(width: 150.0, height: nil)
                .foregroundColor(Color(hue: complementaryHue.normalized, saturation: 0.8, brightness: 0.8))
                .padding(.vertical, 225.0)
                .rotationEffect(.degrees(90))
                .offset(x: 3, y: offset)
                .overlay(TextOverlay())
                
        }
    }
    
    // MARK: Functions

}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
