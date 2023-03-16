//
//  TagView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/15/23.
//

import SwiftUI

struct TagView: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("TAG Name : Clothing")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle).bold()
                        .padding(.leading, 25)
                    
                    Text("Organization accepting the item")
                    
                }
                
            }
            
        }
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
    }
}
