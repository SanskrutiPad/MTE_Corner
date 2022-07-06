//
//  ToolboxView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI

struct ToolboxView: View {
    @State public var selectionSubmitButton: Int? = nil
    @State public var selectionRetryButton: Int? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        HStack(spacing: 35) {
                                
                            Text("Safety Quiz")
                                .font(.system(size: 22))
                                .frame(maxWidth: .infinity, alignment: .center)
                          
                            
                        }
                        .padding()
                        HStack {
                            Text("YVR Winter Safety Hazards & Techniques")
                                .font(.system(size: 20))
                                .font(Font.subheadline.weight(.medium))
                                .frame(maxWidth: .infinity, alignment: .center)
                            
                        }
                        Image("quizImg")
                            .renderingMode(.original)
                            .padding(.bottom, 40)
                        
                        Text("For each question, choose the BEST answer (unless specified).")
                            .padding(.bottom)
                            .padding(.leading)
                            .padding(.trailing)
                            .font(.system(size: 16))
                            .font(Font.subheadline.weight(.medium))
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Group {
                            Question1Redo()
                                .padding()
                            Question2Redo()
                                .padding()
                            Question3Redo()
                                .padding()
                            Question4Redo()
                                .padding()
                            Question5Redo()
                                .padding()
                            Question6Redo()
                                .padding()
                            Question7Redo()
                                .padding()
                            Question8Redo()
                                .padding()
                        }
                        
                       
                    }
                    HStack {
                        NavigationLink(destination: ToolboxView(), tag:1, selection: $selectionRetryButton) {
                            Button {
                                print("Retry button pressed")
                                self.selectionRetryButton = 1
                            } label: {
                                VStack {
                                    Text("Retry")
                                        .padding(.horizontal)
                                    
                                }
                            }
                            .padding(20)
                            .background(Color.white)
                            .foregroundColor(Color("YVR Dark Blue"))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        }
                        
                        
                        NavigationLink(destination: HomePage(), tag:1, selection: $selectionSubmitButton) {
                            Button {
                                print("Submit button pressed")
                                self.selectionSubmitButton = 1
                            } label: {
                                VStack {
                                    Text("Submit")
                                        .padding(.horizontal)
                                    
                                }
                            }
                            .padding(20)
                            .background(Color.white)
                            .foregroundColor(Color("YVR Dark Blue"))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        }
                    }
                }
            }
        }
    }
}

struct ToolboxView_Previews: PreviewProvider {
    static var previews: some View {
        ToolboxView()
    }
}
