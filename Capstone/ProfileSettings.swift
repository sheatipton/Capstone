//
//  ProfileSettings.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct ProfileSettings: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    Text("Settings")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle).bold()
                        .padding(.leading, 25)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(destination: EditProfile().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.system(size: 35))
                            
                            Text("Edit Profile")
                        }
                        .foregroundColor(.black)
                        .padding(.leading, 30)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        Image(systemName: "bell.fill")
                            .font(.system(size: 35))
                        
                        Text("Notifications")
                    }
                    .padding(.leading, 30)
                    
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                        
                    } label: {
                        Image(systemName: "arrow.uturn.backward")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct ProfileSettings_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettings()
    }
}
