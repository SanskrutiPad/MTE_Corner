//
//  SideMenuView.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-10.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isMenuShowing: Bool
    @State var selectionSearchView: Int? = nil
    @State var selectionSettingsView: Int? = nil
    @State var selectionLogoutView: Int? = nil
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("YVR Dark Blue"), Color("YVR Light Blue")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                
                SideMenuHeaderView(isMenuShowing: $isMenuShowing)
                    .foregroundColor(.white)
                    .frame(height: 100)
                    .padding(.top, 30)
                    .padding(.bottom, 40)
                
                VStack {
                    
                    NavigationLink(destination: Search() , tag: 1, selection: $selectionSearchView) {
                        Button{
                            print("Search tapped")
                            self.selectionSearchView = 1
                        } label: {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .padding()
                                    .frame(width: 24, height: 24)
                                Text("Search")
                                    .font(.system(size: 15, weight: .semibold))
                                
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                    }
                    
                    NavigationLink(destination: SettingsView() , tag: 1, selection: $selectionSettingsView) {
                        Button{
                            print("Settings tapped")
                            self.selectionSettingsView = 1
                        } label: {
                            HStack {
                                Image(systemName: "gearshape.fill")
                                    .padding()
                                    .frame(width: 24, height: 24)
                                Text("Settings")
                                    .font(.system(size: 15, weight: .semibold))
                                
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                    }
                    

                    
                    NavigationLink(destination: Logout() , tag: 1, selection: $selectionLogoutView) {
                        Button{
                            print("Logout tapped")
                            self.selectionLogoutView = 1
                        } label: {
                            HStack {
                                Image(systemName: "arrow.left.square.fill")
                                    .padding()
                                    .frame(width: 24, height: 24)
                                Text("Logout")
                                    .font(.system(size: 15, weight: .semibold))
                                
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                    }
                    
                }
                

                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isMenuShowing: .constant(true), selectionSearchView: 0, selectionSettingsView: 0, selectionLogoutView: 0)
    }
}
