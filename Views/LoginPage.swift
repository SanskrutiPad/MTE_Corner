//
//  LoginPage.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-04-28.
//

import SwiftUI
let lightGreyCol = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct LoginPage: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State var authenticationFailed: Bool = false
    @State var authenticationSucceeded: Bool = false
    
    
    var body: some View {
        
        ZStack {
            VStack {
                // App 'Header'
                HStack {
                    
                    Image("YVRLogo_VAA_BlueText_CMYK").resizable().aspectRatio(contentMode:.fit)
                        .frame(width: 140, height: 60, alignment: .leading)
                    Text("Maintenance Corner")
                        .padding()
                        .foregroundColor(Color("YVR Dark Blue"))
                        .font(Font.headline.weight(.heavy))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Divider().background(Color.black)
                Spacer()
                
                WelcomeText()
                LoginImage()
                UserTextField(username: $username)
                PassTextField(password: $password)
                if authenticationFailed {
                    Text("The Username or Password you have entered is incorrect, try again.")
                        .offset(y:-10)
                        .foregroundColor(.red)
                }
                
                Button(action: {print("Button Tapped")}) {
                    LoginButton()
                }
                
                
                Spacer()
                
//                if authenticationSucceeded {
//                    Text("Access granted")
//                        .font(.headline)
//                        .frame(width: 250, height: 80)
//                        .background(Color.green)
//                        .cornerRadius(20.0)
//                        .animation(Animation.default)
//                }
                
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

struct LoginButton: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(LinearGradient(gradient: Gradient(colors: [Color("YVR Dark Blue"), Color("YVR Light Blue")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(35.0)
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color("YVR Dark Blue"))
            .padding(.bottom,20)
    }
}

struct UserTextField: View {
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username)
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
