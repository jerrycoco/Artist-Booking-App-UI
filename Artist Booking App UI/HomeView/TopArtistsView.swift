//
//  TopArtistsView.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-20.
//

import SwiftUI

struct TopArtistsView: View {
    @State private var selectedMenu: Int = 1
    var body: some View {
      
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack (spacing: 10){
                    ForEach(1...5, id: \.self){ index in
                        Button(action: {
                            withAnimation {
                                selectedMenu = index
                            }
                        }) {
                            Text (MyMenuTitle(for:index))
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(selectedMenu == index ? .white : .gray)
                                .frame(width: 80, height: 30)
                                .background(selectedMenu == index ? .purple: .black)
                                .cornerRadius(20)
                        }
                    }
                    
                }
//                .padding()
            }
            Spacer()
            
            switch selectedMenu {
            case 1:
                TopArtistsCardsView()
                CommercialArtistView()
            case 2:
                Text ("Comedian View")
             
            case 3:
                Text ("Speaker")
            case 4:
                Text ("Musician View")
            case 5:
                Text ("Dancers View")
            default:
                EmptyView()
            }
        }
     
        
    }
    
    func MyMenuTitle(for index: Int) -> String {
        switch index {
        case 1:
            return"All"
        case 2:
            return "Comedian"
        case 3:
            return "Speaker"
        case 4:
            return "Musician"
        case 5:
            return "Dancers"
        default:
            return ""
        }
    }
}

struct TopArtistsView_Previews: PreviewProvider {
    static var previews: some View {
        TopArtistsView()
    }
}
