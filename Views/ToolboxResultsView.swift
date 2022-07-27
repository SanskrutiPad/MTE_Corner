//
//  ToolboxResultsView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-13.
//

import SwiftUI

struct ToolboxResultsView: View {
    @State public var selectionRetryButton: Int? = nil
    @State public var selectionDoneButton: Int? = nil
    
    var body: some View {
        ZStack {
            Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
            VStack {
                HStack(spacing: 35) {
                        
                    Text("Safety Quiz")
                        .font(.system(size: 22))
                        .frame(maxWidth: .infinity, alignment: .center)
                  
                    
                }
                .padding()
                Text("YVR Winter Safety Hazards & Techniques")
                    .font(.system(size: 20))
                    .font(Font.subheadline.weight(.medium))
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Image("quizImg")
                    .renderingMode(.original)
                    .padding(.bottom, 40)
                
                Button {
                    print("")
                } label:  {
                    VStack {
                        Text("You scored ")
                            .font(.system(size: 20))
                            .font(Font.subheadline.weight(.medium))
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("*You must score a minimum of 7/8 to pass the Toolbox Talk. ")
                            .padding()
                            .font(.system(size: 18))
                            .font(Font.subheadline.weight(.heavy))
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(Color("lightGreyUni"))
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
                    NavigationLink(destination: ToolboxResultsView(), tag:1, selection: $selectionDoneButton) {
                        Button {
                            print("Done button pressed")
                            self.selectionDoneButton = 1
                        } label: {
                            VStack {
                                Text("Done")
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
                .padding()
                
                Spacer()
            }
        }
    }
}

struct ToolboxResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ToolboxResultsView()
    }
}
