//
//  Home.swift
//  Capstone
//
//  Created by Shea Tipton on 2/15/23.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Welcome, John")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                    
                }
                
                Spacer()
                
                
                
                
                
                
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Profile()) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 40))
                                .font(.headline)
                                .foregroundColor(.black)
                            
                        }
                    }
                }
            }
            .navigationBarTitle("Donation")
            .navigationBarTitleDisplayMode(.inline)
        }
      
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
