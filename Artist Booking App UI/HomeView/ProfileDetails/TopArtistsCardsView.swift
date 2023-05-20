//
//  TopArtistsCardsView.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-20.
//

import SwiftUI

struct TopArtistsCardsView: View {
    @State private var isActive = false
    var body: some View {
      
       
            VStack (spacing:0){
                    TopArtistsTitle()
     
                Button(action: {
                    isActive = true
                }, label: {
                    CardsHorinzotalScroll()
                })
                NavigationLink(destination: JennyWilsonDetails().navigationBarBackButtonHidden(true) , isActive: $isActive){
                    EmptyView()
                }
                
     
            }
        
        
    }
}

struct ArtistCards : Identifiable {
    
    var id = UUID()
    var name : String
    var profession : String
    var image : String
}

let ArtistCardsDetails = [
ArtistCards(name: "Jenny Wilson", profession: "Dancer", image: "portrait2"),
ArtistCards(name: "Jenny Wilson", profession: "Dancer", image: "portrait3"),
ArtistCards(name: "Jenny Wilson", profession: "Dancer", image: "portrait4"),
ArtistCards(name: "Jenny Wilson", profession: "Dancer", image: "portrait5"),
ArtistCards(name: "Jenny Wilson", profession: "Dancer", image: "portrait1")
]

struct TopArtistsCardsView_Previews: PreviewProvider {
    static var previews: some View {
        TopArtistsCardsView()
    }
}

struct TopArtistsTitle: View {
    @State private var isActive = false
    var body: some View {
        HStack {
            Text("Top Artists")
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
            
            Button(action: {
                isActive = true
            }, label: {
                Text ("Seel All")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            } )
            
            NavigationLink(destination: SeeAllTopArtistList(), isActive: $isActive){
                EmptyView()
            }
        }
                   
        .padding()
    }
}

struct CardsHorinzotalScroll: View {
    let gradient = LinearGradient(colors: [Color.purple, Color.blue], startPoint: .bottomLeading, endPoint: .topTrailing)
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack (spacing:15){
                ForEach(ArtistCardsDetails) { detail in
//                    ZStack {
//                        Rectangle()
//                            .fill(Material.thinMaterial)
//                            .frame(width: 200, height: 250)
//                            .cornerRadius(20)
                        VStack {
                            VStack (spacing: 20) {
                                
                                Image(detail.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180, height: 180)
                                    .clipped()
                                    .cornerRadius(20)
                                
                                Text(detail.name)
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                
                            }
                            VStack {
                                Text (detail.profession)
                                    .font(.footnote)
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            
                        }
                        .frame(width: 200, height: 250)
                        .background(.ultraThinMaterial.opacity(0.5))
                        .cornerRadius(20)
                        .frame(width: 200, height: 250)
                        .background(gradient.opacity(0.3))
                        .cornerRadius(20)
                        
//                    }
                    
                }
            }
            .padding()
        }
    }
}
