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
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    Text("Settings")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle).bold()
                        .padding(.leading, 40)
                        .padding(.top, 30)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(destination: EditProfile().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.system(size: 35))
                            Text("Edit Profile")
                                .font(.system(size: 22))
                        }
                        .foregroundColor(.black)
                        .padding(.leading, 40)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        Image(systemName: "bell.fill")
                            .font(.system(size: 35))
                        Text("Notifications")
                            .font(.system(size: 22))
                    }
                    .padding(.leading, 40)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        NavigationLink(destination:
                            homeNavigator()
                            .navigationBarBackButtonHidden(true)
                        
                        ) {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .font(.system(size: 35))
                            Text("Logout")
                                .font(.system(size: 22))
                            
                        }
                        .foregroundColor(.black)
                    }
                    .padding(.leading, 40)
                    Spacer()
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
@ViewBuilder
func homeNavigator() -> some View {
    if signOutDonor() {
        Home()
    }
  
    
}

struct ProfileSettings_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettings()
    }
}
