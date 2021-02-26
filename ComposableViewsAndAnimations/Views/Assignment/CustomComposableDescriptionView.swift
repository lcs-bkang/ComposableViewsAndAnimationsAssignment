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
                    
                    Text("Encouraging Quotes")
                        .font(.title2)
                        .bold()
                        .padding(.top)
                    
                    Text("""
                        This view gives an encouraging quote to the user, whenever the view is tapped.  The quotes are drawn from a JSON file, and are displayed randomly every time.
                        """)
                }
                .padding(.bottom)
                
            }
            
            NavigationLink(destination: CustomComposableView()) {
                SimpleListItemView(title: "Encouraging Quotes",
                                   caption: "Gives encouraging quotes to the user when tapped.")
            }
            
        }
        .padding()
        .navigationTitle("Encouraging Quotes")
        
    }
}

struct CustomComposableDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomComposableDescriptionView()
        }
    }
}
