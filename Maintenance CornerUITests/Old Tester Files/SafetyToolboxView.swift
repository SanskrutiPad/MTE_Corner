
//
//  SatefyToolboxView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-15.
//

import SwiftUI



//add class here
class toolboxView {
    
}

struct SatefyToolboxView: View {
    @State public var selectedQ1: Int?
    @State public var selectedQ2: Int?
    @State public var selectedQ3: Int?
    @State public var selectedQ4: Int?
    @State public var selectedQ5: Int?
    @State public var selectedQ6: Int?
    @State public var selectedQ7: Int?
    @State public var selectedQ8: Int?
    @State public var selectionAnswerView: Int? = nil
    
    var body: some View {
        ZStack {
            Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
            ScrollView{
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
                        
                     

                      
                        NavigationLink(destination: WSBCFirstAidFormView(), tag:1, selection: $selectionAnswerView) {
                            Button {
                                print("Submit button pressed")
                                self.selectionAnswerView = 1
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
                    
                    Spacer()
                    
                }
            
            }
            
            
        }
    }
}

struct SatefyToolboxSample_Previews: PreviewProvider {
    static var previews: some View {
        SatefyToolboxView(selectedQ1: 0, selectedQ2: 0, selectedQ3: 0, selectedQ4: 0, selectedQ5: 0, selectedQ6: 0, selectedQ7: 0, selectedQ8: 0, selectionAnswerView: 0)
    }
}


