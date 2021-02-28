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
    
    var hue: Color = .red
    
    // MARK: Computed Properties
    
    var body: some View {
        Text(message)
            .font(Font.custom("", size: 20.0, relativeTo: .largeTitle))
            .onTapGesture {
                
            }
    }
    
    // MARK: Functions

}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
