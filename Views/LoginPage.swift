//
//  LoginPage.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-04-28.
//

import SwiftUI
import Firebase

let lightGreyCol = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct LoginPage: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var authenticationFailed: Bool = false
    @State private var authenticationSucceeded: Bool = false
    
    
    var body: some View {
        if authenticationSucceeded {
            HomeView()
        } else {
            content
        }
        
    }
    
    var content: some View {
        ZStack {
           ScrollView {
                VStack {
                    // App 'Header'
                    HStack {
                        
                        Image("Logo").resizable().aspectRatio(contentMode:.fit)
                            .frame(width: 140, height: 60, alignment: .leading)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        Text("Maintenance Corner")
                            .padding()
    //                                        .font(.system(size: 20))
                            .foregroundColor(darkText)
                            .font(Font.headline.weight(.medium))
                            .frame(maxWidth: .infinity, alignment: . center)
                    }
                    Divider().background(Color.black)
                    Spacer()
                    
                    WelcomeText()
                    LoginImage()
                    UserTextField(email: $email)
                    PassTextField(password: $password)
//                    if authenticationFailed {
//                        Text("The Username or Password you have entered is incorrect, try again.")
//                            .offset(y:-10)
//                            .foregroundColor(.red)
//                    }
                    
                    
                    HStack {
                        Button {
                            register_account()
                        } label: {
                            Text("Sign Up")
                        }
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 110, height: 50)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("YVR Dark Blue"), Color("YVR Light Blue")]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(35.0)
                            
                        
                        Text("Or")
                            .padding()
                        
                        Button {
                            login()
                        } label: {
                            Text("Login")
                        }
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 110, height: 50)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("YVR Dark Blue"), Color("YVR Light Blue")]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(35.0)
                            .onAppear {
                                Auth.auth().addStateDidChangeListener { auth, usr in
                                    if usr != nil {
                                        authenticationSucceeded.toggle()
                                    }
                                    
                                }
                        }
                    }
              
//                    Spacer()
//
                }
            }
        }
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    func register_account() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
            
        }
    }
}




struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color("YVR Dark Blue"))
            .padding(.bottom,20)
            .padding(.top,20)
    }
}

struct UserTextField: View {
    @Binding var email: String
    
    var body: some View {
        TextField("Username", text: $email)
            .padding()
            .background(lightGreyCol)
            .frame(width: 370, height: 60.0)
            .cornerRadius(35.0)
            .padding(.bottom, 5)
    }
}

struct LoginImage: View {
    var body: some View {
        Image("LoginImg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,10)
    }
}

struct PassTextField: View {
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyCol)
            .frame(width: 370, height: 60.0)
            .cornerRadius(35.0)
            .padding(.bottom, 20)
    }
}
