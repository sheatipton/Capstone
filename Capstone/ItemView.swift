//
//  ItemView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Item was uploaded on 03/18/23")
                    
                    Image("ImagePlaceholder")
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    Button("Mark as Donated") {
                        // 
                    }
                    .foregroundColor(.black)
                }
            }
        }
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
