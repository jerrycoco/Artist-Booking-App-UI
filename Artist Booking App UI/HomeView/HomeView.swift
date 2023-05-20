//
//  HomeView.swift
//  Artist Booking App UI
//
//  Created by jerry nkongolo on 2023-05-20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
       
            NavigationView {
                ZStack {
                    Color.black.edgesIgnoringSafeArea(.all)
           
                ScrollView {
                        VStack {
                            Header()
                            SearchBarView()
                            CategoriesView()
                            TopArtistsView()
                            
                          
                        }
                        
                }
            }
     
            }
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
