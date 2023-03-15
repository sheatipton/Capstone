//
//  Login.swift
//  Capstone
//
//  Created by Shea Tipton on 2/2/23.
//

import SwiftUI

struct Login: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        ZStack {
            Color(red: 235/255, green: 252/255, blue: 208/255)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 30) {
                Text("Sign in to your account")
                    .font(.largeTitle).foregroundColor(Color.black)
                    .padding([.top, .bottom], 40)
                Spacer()
                    .frame(height: 70)
                
                TextField("Email", text: self.$email)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(20.0)
                
                SecureField("Password", text: self.$password)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .foregroundColor(.black)
                    
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(20.0)
                
                Button("Login") {
                    
                    // add login functionality here
                    // change navigation link to home()
                    NavigationLink(destination: Profile()) {}
                }
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.white).bold()
                    .padding()
                    .frame(minWidth: 0, maxWidth: 300)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(15.0)
                    .padding(.horizontal)
                
                Spacer()
                    .frame(height: 50)
                
                HStack {
                    Text("Don't have an account?")
                        .font(.system(.body, design: .rounded))
                        .bold()
                    
                    NavigationLink(destination: DonorSignUp()) {
                        Text("Create one").underline()
                            .font(.system(.body, design: .rounded)).bold()
                            .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                    }
                }
            } .padding([.top, .bottom], 50)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
