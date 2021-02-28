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
    @State var hue: Color = .red
    
    // MARK: Computed Properties
    
    var body: some View {
        
        VStack {
            
            Text(message)
                .foregroundColor(hue)
                .font(.custom(message, size: CGFloat(fontSize)))
                .onAppear() {
                    message = encouragingWords[Int.random(in: 0...5)]
                    fontSize = Double.random(in: 15...50)
                    hue = Color(hue: Double.random(in: 1...360) / 360, saturation: 0.8, brightness: 0.8)
                    
            }
        }
    }
    
    // MARK: Functions

}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
