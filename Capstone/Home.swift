//
//  Home.swift
//  Capstone
//
//  Created by Shea Tipton on 2/15/23.
//

import SwiftUI

struct Home: View {
    @State var isShowingPictures = false
    @State var pickerPresented = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @ObservedObject var classifier: ImageClassifier
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    Rectangle()
                                 //.strokeBorder()
                                 .foregroundColor(.black)
                                 .frame(width: 410, height: 500)
                                 .cornerRadius(20)
                                 .overlay(
                                     Group {
                                         if uiImage != nil {
                                             Image(uiImage: uiImage!)
                                                 .resizable()
                                                 .scaledToFit()
                                         }
                                     }
                                 )
                    
                    VStack{
                        
//                        Button(action: {
//                            if uiImage != nil {
//                                classifier.detect(uiImage: uiImage!)
//                            }
//                        }) {
//                            Image(systemName: "bolt.fill")
//                                .foregroundColor(.orange)
//                                .font(.title)
//                        }
                        
                        
                        Group {
                            if let imageClass = classifier.imageClass {
                                HStack{
                                    Text("Image: ")
                                        //.font(.caption)
                                        .font(.system(size:20))
                                        .foregroundColor(.black)
                                    Text(imageClass)
                                        .bold()
                                        .font(.system(size:20))
                                        .foregroundColor(.black)
                                }
                            } else {
                                HStack{
                                    Text("Image categories: NA")
                                        //.font(.caption)
                                        .font(.system(size:20))
                                        .bold()
                                        .foregroundColor(.black)
                                    
                                }
                            }
                        }
                        .font(.subheadline)
                        .padding()
                        
                    }
//                    Image(systemName: "globe")
//                        .imageScale(.large)
//                        .foregroundColor(.black)
//                        .font(.system(size: 40))
//                        .padding()
//                    Text("hello, world!")
//                        .font(.system(size: 50))
//                        .foregroundColor(.black)
                    
                    
                    
                }
                
                // .navigationBarTitleDisplayMode(.inline)
                // .navigationTitle("TBD")
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            //writeData()
                            //isShowingPictures = true
                            pickerPresented = true
                            sourceType = .camera
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
            
            .sheet(isPresented: $pickerPresented, onDismiss: nil) {
                //ImageLibrary()
                ImagePicker(uiImage: $uiImage, pickerPresented: $pickerPresented,sourceType: $sourceType)
                          .onDisappear{
                              if uiImage != nil {
                                  classifier.detect(uiImage: uiImage!)
                              }
                          }
                
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(classifier: ImageClassifier())
    }
}
