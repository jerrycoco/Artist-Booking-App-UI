//
//  ContentView.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                
                OnBoadingView()
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
