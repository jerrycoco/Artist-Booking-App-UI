//
//  Header.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-20.
//

import SwiftUI

struct Header: View {
    @State var searchingFor = ""
    var body: some View {
//        ZStack {
//            Color.black.edgesIgnoringSafeArea(.all)
        
            VStack {
                HeaderTop()
                
                
            }
       
        
//        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}

struct HeaderTop: View {
    var body: some View {
        HStack{
            Image(systemName: "square")
                .foregroundColor(.white)
                .frame(width: 50, height: 50)
                .background(.ultraThinMaterial.opacity(0.7))
                .clipShape(Circle())
            Spacer()
            
            HStack (spacing:0){
                Text("Hello,")
                    .foregroundColor(.white.opacity(0.7))
                
                Text ("Jane Cooper")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            .font(.subheadline)
            
            Spacer()
            
            Image("portrait3")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
        }
        
        .padding()
    }
}
