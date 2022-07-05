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
    
    
    @State var questionOneAppFeddback = ""
    
    
    var body: some View {
        ZStack {
            Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
            NavigationView {
                    
                Form {
                       Text("1. Has this app been helpful to you? Why, or why not?")
                        .padding(.top)
                        .font(.system(size: 17))
                        TextEditor(text: $questionOneAppFeddback)
                            .padding(.top)
                            .foregroundColor(.black)
                    
                    Text("2. Do you have any further suggestions to improve our framework?")
                        .padding(.top)
                        .font(.system(size: 17))
                    TextEditor(text: $questionOneAppFeddback)
                        .padding(.top)
                        .foregroundColor(.black)
                    Text("3. Do you have any general suggestions to improve our app?")
                        .padding(.top)
                        .font(.system(size: 17))
                    TextEditor(text: $questionOneAppFeddback)
                        .padding(.top)
                        .foregroundColor(.black)
                    
                    Text("4. Any further comments?")
                        .padding(.top)
                        .font(.system(size: 17))
                    TextEditor(text: $questionOneAppFeddback)
                        .padding(.top)
                        .foregroundColor(.black)
                }
                
                
                .navigationTitle("Send App Feedback")
                .foregroundColor(darkText)
                .font(.system(size: 14))
                
            }
            
            
        }
        
        
    }
}

struct SendAppFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        SendAppFeedbackView()
    }
}
