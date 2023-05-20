//
//  JennyWilsonDetails.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-20.
//

import SwiftUI

struct JennyWilsonDetails: View {
    @State private var isActive = false
    let gradientBackground = LinearGradient(colors: [Color.purple, Color.blue], startPoint: .leading, endPoint: .trailing)
    
    let gradientBackgroundLayer = LinearGradient(colors: [Color.black, Color.clear], startPoint: .bottom, endPoint: .top)
//    let myColorPurple = #colorLiteral(red: 0.6380032897, green: 0.322707653, blue: 0.9829649329, alpha: 1)
    var body: some View {
        ZStack {
            gradientBackground.edgesIgnoringSafeArea(.all)
            ZStack {
                gradientBackgroundLayer.edgesIgnoringSafeArea(.all)
                VStack (spacing:20){
                    TopNavigationButtons()
                    Spacer()
                    
                    RectangleOverlay()
                    
                    HStack{
                        Text("Dance Class Videos")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Text("See All")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.white.opacity(0.4))
                        })
                    }
                   
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                   
                                        RoundedRectangle(cornerRadius: 30)
                                        .fill(.ultraThinMaterial)
                                        .frame(width: 120, height: 120)
                                    
                                }
                            }
                        }
                    
                    Button(action: {
                        
                    }, label: {
                        Capsule()
                            .fill(.purple)
                            .frame(height: 60)
                            .overlay(
                            Text("Book Now")
                                .fontWeight(.semibold)
                                .foregroundColor(.white.opacity(0.9))
                            )
                    })
                    
                    
     
                }
                .padding()
            }
        }
    }
}

struct JennyWilsonDetails_Previews: PreviewProvider {
    static var previews: some View {
        JennyWilsonDetails()
    }
}

struct TopNavigationButtons: View {
    @State private var isActive = false
    var body: some View {
        HStack {
            
            Button(action: {
                isActive = true
            }, label: {
                Image(systemName: "chevron.left")
                    .frame(width: 50, height: 50)
                    .background(.ultraThinMaterial.opacity(0.5))
                    .clipShape(Circle())
            })
            
            NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true), isActive: $isActive){
                EmptyView()
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                
                Image(systemName: "arrowshape.turn.up.right")
                    .frame(width: 50, height: 50)
                    .background(.ultraThinMaterial.opacity(0.5))
                    .clipShape(Circle())
            })
            
            
        }
        .foregroundColor(.white.opacity(0.9))
    }
}

struct RectangleOverlay: View {
    @State private var isFollowed = false
    var body: some View {
        VStack (alignment:.leading){
            
            Rectangle()
                .fill(.ultraThinMaterial)
                .frame(height: 170)
                .overlay(
                    
                    //second big stack than contains all the details
                    VStack {
                        
                        HStack{
                            Spacer()
                            Text("Jenny Wilson")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            
//                            Rectangle()
//                                .fill(.purple)
//                                .frame(width: 75, height: 30)
//                                .overlay  (
                            
                            Button(action: {
                                isFollowed.toggle()
                            }, label: {
                                Text( isFollowed ? "Following" : "+ Follow")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white.opacity(0.9))
                                    .frame(width: 80, height: 30)
                                    .background(isFollowed ? .gray : .purple)
                                    .cornerRadius(20)
                            })
                                  
//                                )
//                                .cornerRadius(20)
                            Spacer()
                        }
                        
                        
                        HStack {
                            Spacer()
                            VStack (alignment:.leading, spacing:10){
                                Text("San Francisco, CA")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white.opacity(0.5))
                                
                                HStack (spacing:0){
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    
                                    Text("4.8/5.0")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white.opacity(0.5))
                                }
                                .font(.subheadline)
                                
                                HStack {
                                    Capsule()
                                        .fill(.thinMaterial.opacity(0.6))
                                        .frame(width: 80, height: 25)
                                        .overlay(
                                            Text("#Hiphop")
                                                .font(.footnote)
                                        )
                                    
                                    Capsule()
                                        .fill(.thinMaterial.opacity(0.6))
                                        .frame(width: 135, height: 25)
                                        .overlay(
                                            Text("#HiphopDancer")
                                                .font(.footnote)
                                        )
                                    
                                    Capsule()
                                        .fill(.thinMaterial.opacity(0.6))
                                        .frame(width: 80, height: 25)
                                        .overlay(
                                            Text("#Dancer")
                                                .font(.footnote)
                                        )
                                }
                                .foregroundColor(.white)
                            }
                            Spacer()
                        }
                        
                    }
                    
                )
                .cornerRadius(20)
            
        }
    }
}
