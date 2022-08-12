//
//  ContentView.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-04-26.
//

import SwiftUI



struct ContentView: View {
    @State private var isMenuShowing = false
    @State private var selected = ""
    
    
    var body: some View {
        NavigationView {
            ZStack {
                if isMenuShowing {
                    SideMenuView(isMenuShowing: $isMenuShowing)
                }
                LoginPage()
                
//                animation
                    .cornerRadius(isMenuShowing ? 20 : 10)
                    .offset(x: isMenuShowing ? 300 : 0, y: isMenuShowing ? 44 : 0)
                    .scaleEffect(isMenuShowing ? 0.8 : 1)
                
                    .navigationBarItems(leading:Button(action: {
                        withAnimation(.spring()) {
                            isMenuShowing.toggle()
                        }
                    }, label: {
                        Image("sideMenu")
                    }))
                    .navigationBarTitleDisplayMode(.inline)
            }
            
        }
    }
       
}





struct HomePageView: View {
    var body: some View {
        ZStack {
            Color(.white)
            Text("Hello World")
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ContentView()
                .preferredColorScheme(.light)
            .previewDevice("iPhone 13")
        }
    }
}
