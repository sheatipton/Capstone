//
//  Home.swift
//  Capstone
//
//  Created by Shea Tipton on 2/15/23.
//

import SwiftUI

struct Home: View {
    @State var isShowingPictures = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.black)
                        .font(.system(size: 40))
                        .padding()
                    Text("hello, world!")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                    
                }
                
                // .navigationBarTitleDisplayMode(.inline)
                // .navigationTitle("TBD")
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            //writeData()
                            isShowingPictures = true
                        } label: {
                            Image(systemName: "camera.viewfinder")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Login()) {
                            Text("Login").underline()
                                .font(.system(size: 20))
                                .font(.headline)
                                .foregroundColor(.black)
                            
                        }
                    }
                }
            }
            
            .sheet(isPresented: $isShowingPictures, onDismiss: nil) {
                ImageLibrary()
                
                
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
