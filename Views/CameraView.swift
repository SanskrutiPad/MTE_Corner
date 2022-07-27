//
//  CameraView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-19.
//

import SwiftUI

struct CameraView: View {
    @State private var sheetIsShowing: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var srcType: UIImagePickerController.SourceType = .camera
    @State private var image: UIImage?
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
                ScrollView {
                    Text("Add Hazard")
                        .padding()
                        .foregroundColor(.white)
                        .font(Font.title.weight(.medium))
                    
                    HStack {
                        Image(uiImage: image ?? UIImage(named: "ImagePlaceholder")!)
                            .resizable()
                            .frame(width: 150, height: 150)
                        
                        Button("Choose Picture") {
                            self.sheetIsShowing = true
                        }
                        .padding(15)
                        .background(Color.white)
                        .foregroundColor(Color("YVR Dark Blue"))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
    //                    .actionSheet will be able to provide users the option of choosing photo from camera roll or choosing photo from image library
                        .actionSheet(isPresented: $sheetIsShowing) {
                            ActionSheet(title: Text("Choose"), buttons: [
                                .default(Text("Photo Library")) {
                                    self.showImagePicker = true
                                    self.srcType = .photoLibrary
                                },
                                .default(Text("Camera")) {
                                    self.showImagePicker = true
                                    self.srcType = .camera
                                    
                                },
                                .cancel()
                            
                            ])
                        }
                    }
                    
                    VStack {
                        HStack {
                            Image(uiImage: image ?? UIImage(named: "ImagePlaceholder")!)
                                .resizable()
                            
                                .frame(width: 100, height: 100)
                            
                            VStack {
                                Button("Choose Picture") {
                                    self.sheetIsShowing = true
                                }
                                .padding(15)
                                .background(Color.white)
                                .foregroundColor(Color("YVR Dark Blue"))
                                .cornerRadius(20)
                                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            //                    .actionSheet will be able to provide users the option of choosing photo from camera roll or choosing photo from image library
                                .actionSheet(isPresented: $sheetIsShowing) {
                                    ActionSheet(title: Text("Choose"), buttons: [
                                        .default(Text("Photo Library")) {
                                            self.showImagePicker = true
                                            self.srcType = .photoLibrary
                                        },
                                        .default(Text("Camera")) {
                                            self.showImagePicker = true
                                            self.srcType = .camera
                                            
                                        },
                                        .cancel()
                                    
                                    ])
                                    
                            }
                                
                            }
                        }
                        
                        TextEditor(text: $text)
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Image(uiImage: image ?? UIImage(named: "ImagePlaceholder")!)
                            .resizable()
                            .frame(width: 150, height: 150)
                        
                        Button("Choose Picture") {
                            self.sheetIsShowing = true
                        }
                        .padding(15)
                        .background(Color.white)
                        .foregroundColor(Color("YVR Dark Blue"))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
    //                    .actionSheet will be able to provide users the option of choosing photo from camera roll or choosing photo from image library
                        .actionSheet(isPresented: $sheetIsShowing) {
                            ActionSheet(title: Text("Choose"), buttons: [
                                .default(Text("Photo Library")) {
                                    self.showImagePicker = true
                                    self.srcType = .photoLibrary
                                },
                                .default(Text("Camera")) {
                                    self.showImagePicker = true
                                    self.srcType = .camera
                                    
                                },
                                .cancel()
                            
                            ])
                        }
                    }
                    HStack {
                        Image(uiImage: image ?? UIImage(named: "ImagePlaceholder")!)
                            .resizable()
                            .frame(width: 150, height: 150)
                        
                        Button("Choose Picture") {
                            self.sheetIsShowing = true
                        }
                        .padding(15)
                        .background(Color.white)
                        .foregroundColor(Color("YVR Dark Blue"))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
    //                    .actionSheet will be able to provide users the option of choosing photo from camera roll or choosing photo from image library
                        .actionSheet(isPresented: $sheetIsShowing) {
                            ActionSheet(title: Text("Choose"), buttons: [
                                .default(Text("Photo Library")) {
                                    self.showImagePicker = true
                                    self.srcType = .photoLibrary
                                },
                                .default(Text("Camera")) {
                                    self.showImagePicker = true
                                    self.srcType = .camera
                                    
                                },
                                .cancel()
                            
                            ])
                        }
                    }
                }
            }
            .navigationBarTitle("")
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: self.$image, sheetIsShown: self.$showImagePicker, srcType: self.srcType)
        }
        
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
