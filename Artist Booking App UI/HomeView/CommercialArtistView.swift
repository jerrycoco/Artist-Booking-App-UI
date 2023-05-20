//
//  CommercialArtistView.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-21.
//

import SwiftUI

struct CommercialArtistView: View {
    @State private var isActive = false
    var body: some View {
      
        VStack {
            CommercialArtistsTitle()
            
            CommercialArtistCard()


        
        }
        .padding()
    }
}

struct CommercialArtistView_Previews: PreviewProvider {
    static var previews: some View {
        CommercialArtistView()
    }
}

struct CommercialArtistsTitle: View {
    @State private var isActive = false
    var body: some View {
        HStack {
            Text("Commercial Artists")
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Spacer ()
            Button(action: {
                isActive = true
            }, label: {
                Text("See All")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            })
            NavigationLink(destination: SeeAllCommercialArtists(), isActive: $isActive){
                EmptyView()
            }
        }
        
    }
}

struct CommercialArtistCard: View {
    var body: some View {
        VStack {
            Image("portrait3")
                .resizable()
                .scaledToFill()
                .frame(width: 320, height: 320)
                .clipped()
                .cornerRadius(20)
        }
        .frame(width: 360, height: 360)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.blue, .purple]), // Customize the gradient colors as per your preference
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .opacity(0.3)
                )
        )
        .background(.ultraThinMaterial.opacity(0.5))
        .cornerRadius(20)
    }
}
