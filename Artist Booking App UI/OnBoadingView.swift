//
//  OnBoadingView.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-20.
//

import SwiftUI

struct OnBoadingView: View {
    var MyColor = Color(  #colorLiteral(red: 0.6380032897, green: 0.322707653, blue: 0.9829649329, alpha: 1))
    @State private var isActive = false
    var body: some View {
        NavigationView() {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
                VStack {
                    Spacer()
                    zCards()
                    Spacer()
                    BodyTextBold()
                    
                    Spacer()
                    
                    MyButton()
                     
                    
                    
                }
            }
 
        }
    }
}

struct OnBoadingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoadingView()
    }
}

struct zCards: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(LinearGradient(colors: [Color.pink.opacity(0.5), Color.purple], startPoint: .bottom, endPoint: .top))
                    .frame(width: 250, height: 340)
                    .rotationEffect(Angle(degrees: 15))
                Rectangle()
                    .fill(.blue)
                    .frame(width: 250, height: 340)
                    .rotationEffect(Angle(degrees: -15))
                
                Image("image1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height:340)
                    .cornerRadius(30)
            }
            
            
            
        }
        .padding()
    }
}

struct MyButton: View {
    var MyColor = Color(  #colorLiteral(red: 0.6380032897, green: 0.322707653, blue: 0.9829649329, alpha: 1))
    @State private var isActive = false
    var body: some View {

            VStack{
                NavigationLink(destination: HomeView() .navigationBarBackButtonHidden(true), isActive: $isActive){
                  
                }
                Button(action: {
                    isActive = true
                }, label: {
                    Text("Get Started")
                        .fontWeight(.semibold)
                        .fontDesign(.rounded)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 60)
                        .background(MyColor)
                        .cornerRadius(40)
                })
                
            }
    }
}

struct BodyTextBold: View {
    var body: some View {
        VStack {
            Text("Connecting to you with the \n Artists that bring your \n Vision to life.")
                .font(.title)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
        }
    }
}
