//
//  ItemDescription.swift
//  Capstone
//
//  Created by Shea Tipton on 3/14/23.
//

import SwiftUI

struct ItemDescription: View {
    
    @State private var id = ""
    @State private var item = ""
    @State private var color = ""
    @State private var size = ""
    @State private var condition = ""
    
    var body: some View {
        
        ZStack {
            Color(red: 235/255, green: 252/255, blue: 208/255)
                .ignoresSafeArea()
            
            VStack {
                
                Text("Item Information")
                    .font(.largeTitle).foregroundColor(Color.black)
                    .padding([.top, .bottom], 40)
                
                Image("ImagePlaceholder")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Spacer()
                    .frame(height: 50)
    
                // pull from ai generated name
                TextField("Item", text: self.$item)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                
                TextField("Color", text: self.$color)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                
                TextField("Size", text: self.$size)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                
                TextField("Condition", text: self.$condition)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))

                Spacer()
                    .frame(height: 50)
                
                Button("Continue") {
                  // move to results or no results page
                    NavigationLink(destination: Profile()) {}
                }
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.white).bold()
                    .padding()
                    .frame(minWidth: 0, maxWidth: 150)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30.0)
                    .padding(.horizontal)
                
            }
        }
    }
}

struct ItemDescription_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescription()
    }
}
