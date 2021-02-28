//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    // MARK: Stored Properties
    
    @State var message: String = ""
    
    @State var fontSize: Double = 25.0
    
    @State var hue: Color = .red
    
    // MARK: Computed Properties
    
    private static let fontNames: [String] = {
        var names: [String] = []
        for familyName in UIFont.familyNames {
            names.append(contentsOf: UIFont.fontNames(forFamilyName: familyName))
        }
        return names.sorted()
    }()
    
    var body: some View {
        Text(message)
            .foregroundColor(hue)
            .font(Font.custom(message, size: CGFloat(fontSize)))
            .onAppear() {
                message = encouragingWords[Int.random(in: 0...5)]
            }
            .onTapGesture {
                fontSize = Double.random(in: 15...50)
                hue = Color(hue: Double.random(in: 1...360) / 360, saturation: 0.8, brightness: 0.8)
            }
    }
    
    // MARK: Functions

}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
