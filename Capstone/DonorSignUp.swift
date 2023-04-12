//
//  DonorSignUp.swift
//  Capstone
//
//  Created by Shea Tipton on 3/14/23.
//

import SwiftUI

struct DonorSignUp: View {
        
    @State private var userType = ""
    @State private var username = ""
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var dob = ""
    
    var body: some View {
        
        ZStack {
            Color(red: 255/255, green: 249/255, blue: 245/255)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 30) {
                Text("Create an Account")
                    .font(.largeTitle).foregroundColor(Color.black)
                    .padding([.bottom], 0)
                Spacer()
                
                TextField("Full Name", text: self.$fullName)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(20.0)
                
                TextField("Username", text: self.$username)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(20.0)
                
                
                TextField("Email", text: self.$email)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(20.0)
                
                SecureField("Password", text: self.$password)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(20.0)
                
                SecureField("Confirm Password", text: self.$confirmPassword)
                    .padding()
                    .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                    .frame(minWidth: 0, maxWidth: 340)
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(20.0)
                
                Button("Sign Up") {
                    registerDonor(email: email,password: password,userName: username,fullName: fullName)
                    
                    self.fullName = ""
                    self.username = ""
                    self.email = ""
                    self.password = ""
                    self.confirmPassword = ""
                }
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.white).bold()
                    .padding()
                    .frame(minWidth: 0, maxWidth: 300)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(15.0)
                    .padding(.horizontal)
                
                HStack {
                    Text("Already have an account?")
                        .font(.system(.body, design: .rounded))
                        .bold()
                    
                    NavigationLink(destination: Login()) {
                        Text("Sign in").underline()
                            .font(.system(.body, design: .rounded)).bold()
                            .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                        
                    }
                }
            }
            .padding([.top, .bottom], 50)
        }
    }
}

struct DonorSignUp_Previews: PreviewProvider {
    static var previews: some View {
        DonorSignUp()
    }
}
