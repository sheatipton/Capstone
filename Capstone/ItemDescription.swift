//
//  ItemDescription.swift
//  Capstone
//
//  Created by Shea Tipton on 3/19/23.
//

import SwiftUI

struct ItemDescription: View {
    
    @Environment(\.dismiss) private var dismiss
    @State var uiImage: UIImage?
    @State private var item: String?
    @State private var id = ""
    @State var imageString: String?
    @State private var color = "Color: "
    @State private var size = "Size: "
    @State private var condition = "Condition: "
    @State private var date = Date()
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text("Item Information")
                            .font(Font.custom("Norwester", size: 35))
                        
                        //Image(uiImage: uiImage!)
                        Image("ImagePlaceholder")  // use this one for simulator
                            .resizable()
                            .frame(width: 200, height: 250)
                            .border(Color(red: 196/255, green: 87/255, blue: 47/255), width: 2)
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Text(imageString ?? " item ")
                        //Text("item") // use this one for simulator
                        //.padding()
                            .font(Font.custom("Circe", size: 20))
                            .frame(minWidth: 0, maxWidth: 340)
                            .background(Color(red: 244, green: 244, blue: 244))
                        
                        TextField("Color", text: self.$color)
                            .padding()
                            .font(Font.custom("Circe", size: 20))
                            .frame(minWidth: 0, maxWidth: 340)
                            .background(Color(red: 244, green: 244, blue: 244))
                        
                        TextField("Size", text: self.$size)
                            .padding()
                            .font(Font.custom("Circe", size: 20))
                            .frame(minWidth: 0, maxWidth: 340)
                            .background(Color(red: 244, green: 244, blue: 244))
                        
                        TextField("Condition", text: self.$condition)
                            .padding()
                            .font(Font.custom("Circe", size: 20))
                            .frame(minWidth: 0, maxWidth: 340)
                            .background(Color(red: 244, green: 244, blue: 244))
                        
                        Spacer()
                            .frame(height: 40)
                        
                        NavigationLink(destination: Results(item: imageString ?? "")
                            .navigationBarBackButtonHidden(true)) {
                                Text("Continue")
                                    .font(Font.custom("Circe", size: 20))
                                    .foregroundColor(.white).bold()
                                    .padding()
                                    .frame(minWidth: 0, maxWidth: 150)
                                    .background(Color(red: 196/255, green: 87/255, blue: 47/255))
                                    .cornerRadius(30.0)
                                    .padding(.horizontal)
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
    }
}

struct ItemDescription_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescription()
    }
}
