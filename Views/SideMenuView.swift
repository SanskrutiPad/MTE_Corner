//
//  SideMenuView.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-10.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isMenuShowing: Bool
//    let viewModel: SideMenuViewModel
    @State var selectionHomeView: Int? = nil
    @State var selectionSearchView: Int? = nil
    @State var selectionDashboardView: Int? = nil
    @State var selectionProfileView: Int? = nil
    
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
                    NavigationLink(destination: HomePageView() , tag: 1, selection: $selectionHomeView) {
                        Button{
                            print("Search tapped")
                            self.selectionHomeView = 1
                        } label: {
                            HStack {
                                Image(systemName: "homekit")
                                    .padding()
                                    .frame(width: 24, height: 24)
                                Text("Home")
                                    .font(.system(size: 15, weight: .semibold))
                                
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                    }
                    
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
                    
                    NavigationLink(destination: Dashboard() , tag: 1, selection: $selectionDashboardView) {
                        Button{
                            print("Dashboard tapped")
                            self.selectionDashboardView = 1
                        } label: {
                            HStack {
                                Image(systemName: "chart.bar.xaxis")
                                    .padding()
                                    .frame(width: 24, height: 24)
                                Text("Dashboard")
                                    .font(.system(size: 15, weight: .semibold))
                                
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                    }
                    
                    NavigationLink(destination: Search() , tag: 1, selection: $selectionProfileView) {
                        Button{
                            print("Profile tapped")
                            self.selectionProfileView = 1
                        } label: {
                            HStack {
                                Image(systemName: "person")
                                    .padding()
                                    .frame(width: 24, height: 24)
                                Text("Profile")
                                    .font(.system(size: 15, weight: .semibold))
                                
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                    }
                    
                    NavigationLink(destination: Logout() , tag: 1, selection: $selectionProfileView) {
                        Button{
                            print("Logout tapped")
                            self.selectionProfileView = 1
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
                
                
//                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
//
////                    NavigationLink(destination: option.title , label: {
//                                                SideMenuOptionView(viewModel: option)
//                                                    .foregroundColor(.white)
////                    }
//
//                }
                
                
                
//                NavigationLink(destination: HomePageView(), label: {
//                    Text("Home")
//                })
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isMenuShowing: .constant(true), selectionHomeView: 0, selectionSearchView: 0, selectionDashboardView: 0, selectionProfileView: 0)
    }
}
