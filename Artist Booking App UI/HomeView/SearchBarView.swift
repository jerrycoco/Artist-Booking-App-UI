//
//  SearchBarView.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-20.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchText = ""
    
    var body: some View {
        ZStack {
            Capsule()
                .fill(.purple.opacity(0.2))
                .frame(height: 40)
                .overlay(
                Text("Search artist")
                    .font(.footnote)
                    .foregroundColor(.gray.opacity(0.6))
                )
                .padding()
            HStack {
                
                Spacer()
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                  
            }
            .padding(.horizontal,25)
        }

    }
}




struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
