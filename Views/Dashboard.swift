//
//  Dashboard.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-04-27.
//

import SwiftUI

struct Dashboard: View {
    @State var index = 0
    
    
    var body: some View {
        NavigationView {
            VStack {
                // App 'Header'
    //            HStack {
    //
    //                Image("YVRLogo_VAA_BlueText_CMYK").resizable().aspectRatio(contentMode:.fit)
    //                    .frame(width: 140, height: 60, alignment: .leading)
    //                Text("Maintenance Corner")
    //                    .padding()
    //                    .foregroundColor(Color("YVR Dark Blue"))
    //                    .font(Font.headline.weight(.heavy))
    //                    .frame(maxWidth: .infinity, alignment: .trailing)
    //            }
    //            Divider().background(Color.black)
                Spacer()
    //
    //            DashboardTitle()
                
    //            Tab view
                HStack {
                    Text("Week")
                        .foregroundColor(self.index == 0 ? .white : Color("YVR Light Blue").opacity(0.7))
                        .fontWeight(.bold)
                        .padding(.vertical,10)
                        .padding(.horizontal,35)
                        .background(Color("YVR Light Blue").opacity(self.index == 0 ? 1 : 0))
                        .clipShape(Capsule())
                        .onTapGesture {
                            self.index = 0
                        }
                    Spacer(minLength: 0)
                    Text("Month")
                        .foregroundColor(self.index == 1 ? .white : Color("YVR Light Blue").opacity(0.7))
                        .fontWeight(.bold)
                        .padding(.vertical,10)
                        .padding(.horizontal,35)
                        .background(Color("YVR Light Blue").opacity(self.index == 1 ? 1 : 0))
                        .clipShape(Capsule())
                        .onTapGesture {
                            self.index = 1
                        }
                    Spacer(minLength: 0)
                    Text("Year")
                        .foregroundColor(self.index == 2 ? .white : Color("YVR Light Blue").opacity(0.7))
                        .fontWeight(.bold)
                        .padding(.vertical,10)
                        .padding(.horizontal,35)
                        .background(Color("YVR Light Blue").opacity(self.index == 2 ? 1 : 0))
                        .clipShape(Capsule())
                        .onTapGesture {
                            self.index = 2
                        }
                }
                .background(Color.black.opacity(0.06))
                .clipShape(Capsule())
                .padding(.horizontal)
                
                
                Spacer()
                
                
                
                
                
                
                HStack {
                // Button #1
                    Text("Hello")
                        .padding()
                        .frame(width: 160, height: 520, alignment: .leading)
                        .background(Color("YVR Light Blue"))
                        .cornerRadius(25)
                        .padding()
                    VStack {
                    // Button #2, Button #3
                        Text("Hello")
                            .padding()
                            .frame(width: 160, height: 230, alignment: .trailing)
                            .background(Color("YVR Light Blue"))
                            .cornerRadius(25)
                            .padding(.bottom, 52)
                        Text("Hello")
                            .padding()
                            .frame(width: 160, height: 230, alignment: .trailing)
                            .background(Color("YVR Light Blue"))
                            .cornerRadius(25)
                        
                    }
                    
                }
            }
        }
        .navigationTitle("Dashboard")
        
        
       
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}

struct DashboardTitle: View {
    var body: some View {
        Text("Dashboard")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(Color("YVR Dark Blue"))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

//struct TabButton: View {
//    var body: some View {
//
//
//
//    }
//
//
//}
