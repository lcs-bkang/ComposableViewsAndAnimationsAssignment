//
//  CustomComposableDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct CustomComposableDescriptionView: View {
    
    // MARK: Stored properties
    @State private var phrase: String = ""
    
    // MARK: Computed properties
    var body: some View {
        
        List {
            
            VStack(alignment: .leading) {
                
                Group {
                    
                    Text("Encouraging Messages")
                        .font(.title2)
                        .bold()
                        .padding(.top)
                    
                    Text("""
                        This view gives an encouraging message to the user, whenever the view appears.  The messages are drawn from an array, and are displayed randomly every time.
                        """)
                }
                .padding(.bottom)
                
            }
            
            NavigationLink(destination: CustomComposableView()) {
                SimpleListItemView(title: "Encouraging Messages",
                                   caption: "Gives encouraging messages to the user.")
            }
            
        }
        .padding()
        .navigationTitle("Encouraging Messages")
        
    }
}

struct CustomComposableDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomComposableDescriptionView()
        }
    }
}
