//
//  CategoriesView.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-20.
//

import SwiftUI

struct CategoriesView: View {
    @State private var isActive = false
    
    var body: some View {
        
            VStack {
                HStack {
                    Text("Select Categories")
                        .fontWeight(.bold)
                        .colorInvert()
                    
                    Spacer()
                    
                    Button(action: {
                        isActive = true
                    }, label: {
                        Text("See All")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                    })
                    
                    NavigationLink(destination: SeeAllCategories(), isActive: $isActive) {
                        EmptyView()
                    }
                }
                .padding()
            }
        
    }
}


struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
