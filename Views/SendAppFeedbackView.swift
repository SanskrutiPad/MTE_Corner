//
//  SendAppFeedbackView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-30.
//

import SwiftUI

struct SendAppFeedbackView: View {
    
    
    
    //    Initializes Background Colour
        init(){
                UITableView.appearance().backgroundColor = UIColor(named: "YVR Light Blue")
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(darkText)]
            }
    
    
    @State var questionOneAppFeedback = ""
    @State var questionTwoAppFeedback = ""
    @State var questionThreeAppFeedback = ""
    @State var questionFourAppFeedback = ""
    
    
    var body: some View {
        ZStack {
            Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
            VStack {
                NavigationView {
                        
                    Form (){
                        Section (header: Text("NOTE: Please provide as much detail as possible").frame(alignment: .leading).foregroundColor(.white).font(Font.headline.weight(.bold)).padding(.bottom)){
                            Text("1. Has this app been helpful to you? Why, or why not?")
                                .padding(.top)
                            .font(.system(size: 17))
                        TextEditor(text: $questionOneAppFeedback)
                            .padding(.top)
                            .foregroundColor(.black)
                        
                        Text("2. Do you have any further suggestions to improve our framework?")
                            .padding(.top)
                            .font(.system(size: 17))
                        TextEditor(text: $questionTwoAppFeedback)
                            .padding(.top)
                            .foregroundColor(.black)
                        Text("3. Do you have any general suggestions to improve our app?")
                            .padding(.top)
                            .font(.system(size: 17))
                        TextEditor(text: $questionThreeAppFeedback)
                            .padding(.top)
                            .foregroundColor(.black)
                        
                        Text("4. Any further comments?")
                            .padding(.top)
                            .font(.system(size: 17))
                        TextEditor(text: $questionFourAppFeedback)
                            .padding(.top)
                            .foregroundColor(.black)
                        }
                        .textCase(nil)
                        
                                        
                    }
                    
                    
                    
                    .navigationTitle("Send App Feedback")
                    .foregroundColor(darkText)
                    .font(.system(size: 14))
                    
                }
                HStack {
                    Button("Clear Form") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .frame(width: 120, height: 13)
                    .padding()
                    .font(Font.headline.weight(.medium))
                    .foregroundColor(Color("YVR Dark Blue"))
                    .background(lightGreyCol)
                    .cornerRadius(25)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    Button("Submit") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .frame(width: 120, height: 13)
                    .padding()
                    .font(Font.headline.weight(.medium))
                    .foregroundColor(Color("YVR Dark Blue"))
                    .background(lightGreyCol)
                    .cornerRadius(25)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                }
            }
            
            
        }
        
        
    }
}

struct SendAppFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        SendAppFeedbackView()
    }
}
