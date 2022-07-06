//
//  HomePage.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-04-27.
//

import SwiftUI
let lightGreyForHome = Color(red: 210.0/255.0, green: 210.0/255.0, blue: 212.0/255.0)
let darkText = Color(red: 12.0/255.0, green: 54.0/255.0, blue: 122.0/255.0)




struct HomePage: View {
    @State var selectionWelcome: Int? = nil
    @State var selectionDashboard: Int? = nil
    @State var selectionFirstAid: Int? = nil
    @State var selectionTailboardMenuView: Int? = nil
    @State var selectionAppFeedbackView: Int? = nil
    
   
    var body: some View {
//---------------------------------------- HOME PAGE -------------------------------------------------------
        NavigationView {
            ZStack {
    //            Color("lightGreyUni").ignoresSafeArea(.all)
                ScrollView {
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
                                Spacer()
                                
                                
                                // Line #1 of buttons
                                HStack {

    //                               WELCOME BACK BUTTON
                                    NavigationLink(destination: ToolboxView(), tag:1, selection: $selectionWelcome) {
                                        Button {
                                            print("QuizSamp tapped")
                                            self.selectionWelcome = 1
                                        } label: {
                                            VStack {
                                                Text("Welcome Back Sanskruti!")
                                                    .padding()
                                                    .font(Font.headline.weight(.medium))
                                                Text("NEW Safety Quiz Available")
                                                    .padding()
                                                    .background(lightGreyForHome)
                                                    .font(Font.caption.weight(.medium))
                                                    .cornerRadius(25)
                                                    }
                                                        .frame(width: 150, height: 150)
                                                        .padding()
                                                        .foregroundColor(darkText)
                                                        .background(Color("YVR Light Blue"))
                                                        .cornerRadius(25)
                                                        .shadow(color: .gray, radius: 2, x: 0, y: 2)

                                                }
                                    }
                                    
                                    
                                    
                    //                                DASHBOARD BUTTON
                                                    // ADD ANIMATION BAR CHART TO SHOW HOW MANY TASKS HAVE BEEN COMPLETED
                                    NavigationLink(destination: Dashboard(), tag: 1, selection: $selectionDashboard) {
                                                        Button{
                                                            print("Dashboard tapped")
                                                            self.selectionDashboard = 1
                                                        } label: {
                                                            VStack {
                                                                Text("DASHBOARD")
                                                                Image(systemName: "chart.bar")
                                                                    .padding()
                                                                    .font(.system(size: 60))
                                                            }
                                                        }
                                                        .frame(width: 150, height: 150)
                                                        .padding()
                                                        .font(Font.headline.weight(.medium))
                                                        .background(Color("YVR Light Blue"))
                                                        .foregroundColor(darkText)
                                                        .cornerRadius(25)
                                                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                                    }
                                                    
                                                }
                                
                                // Line #2 of buttons
                                HStack {
                                    
                                    ReportToPlannerButton()
                                    
    //                                FIRST AID BUTTON
                                    NavigationLink(destination: FirstAidMenuView(), tag:1, selection: $selectionFirstAid) {
                                        Button {
                                            print("FirstAid pressed")
                                            self.selectionFirstAid = 1
                                        } label: {
                                            VStack {
                                                Text("FIRST AID")
                                                    .padding(.horizontal)
                                                Image(systemName: "cross")
                                                    .font(.system(size: 40))
                                                
                                            }
                                        }
                                        .frame(width: 90, height: 90)
                                                .padding()
                                                .font(Font.headline.weight(.medium))
                                                .foregroundColor(darkText)
                                                .background(Color("YVR Light Blue"))
                                                .cornerRadius(25)
                                                .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                    }
                                    
                                    
                                    
//                                    TAILBOARD BUTTON
//                                    TailboardButton()
                                    NavigationLink (destination: TailboardMenuView(), tag:1, selection: $selectionTailboardMenuView) {
                                        Button{
                                            print("FirstAid pressed")
                                            self.selectionTailboardMenuView = 1
                                                } label: {
                                                    VStack {
                                                        Text("TAILBOARD")
                                                        Image(systemName: "doc.on.clipboard")
                                                            .font(.system(size: 35))
                                                    }
                                                }
                                                .frame(width: 90, height: 90)
                                                .padding()
                                                .font(Font.headline.weight(.medium))
                                                .foregroundColor(darkText)
                                                .background(Color("YVR Light Blue"))
                                                .cornerRadius(25)
                                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                    }
                                }
                                
                                // Line #3 of buttons
                                HStack {
                                    
                                    
                                    ShareButton()
                                    YVRNewsButton()
                                    SettingsButton()
                                }
                                
                        NavigationLink (destination: SendAppFeedbackView(), tag:1, selection: $selectionAppFeedbackView){
                            Button {
                                print("Send App Feedback button pressed")
                                self.selectionAppFeedbackView = 1
                            } label: {
                                HStack {
                                    Image(systemName: "person.wave.2")
                                    Text("SEND APP FEEDBACK")
                                }
                                
                            }
                            .frame(width: 350, height: 35)
                            .padding()
                            .font(Font.headline.weight(.medium))
                            .foregroundColor(darkText)
                            .background(Color("YVR Light Blue"))
                            .cornerRadius(25)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        }
                                
                               
                                
                                Spacer()
                                Spacer()
            //                    Spacer()
                            
                            
                    }
                }
            }
        }   // end of Home Page
    
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(selectionWelcome: 0, selectionDashboard: 0, selectionFirstAid: 0)
    }
}



    

struct ShareButton: View {
    var body: some View {
        Button {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        } label: {
            VStack {
                Text("SHARE")
                Image(systemName: "arrowshape.turn.up.left.2")
                    .font(.system(size: 40))
            }
        }
        .frame(width: 90, height: 90)
        .font(Font.headline.weight(.medium))
        .padding()
        .foregroundColor(Color("YVR Dark Blue"))
        .background(Color("YVR Light Blue"))
        .cornerRadius(25)
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
    }
}



struct ReportToPlannerButton: View {
    var body: some View {
        Button("REPORT TO PLANNER") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .frame(width: 90, height: 90)
        .padding()
        .font(Font.headline.weight(.medium))
        .foregroundColor(darkText)
        .background(Color("YVR Light Blue"))
        .cornerRadius(25)
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
    }
}


struct YVRNewsButton: View {
    var body: some View {
        Button {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        } label: {
            VStack {
                Text("YVR NEWS")
                Image(systemName: "newspaper")
                    .font(.system(size: 40))
                    .foregroundColor(darkText)
            
            }
        }
        .frame(width: 90, height: 90)
        .padding()
        .font(Font.headline.weight(.medium))
        .foregroundColor(darkText)
        .background(Color("YVR Light Blue"))
        .cornerRadius(25)
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
    }
}




struct SettingsButton: View {
    var body: some View {
        Button {
            print("Button Pressed")
        } label: {
            VStack {
                Text("SETTINGS")
                Image(systemName: "gearshape.2")
                    .font(.system(size: 40))
                    .foregroundColor(darkText)
                
            }
        }
        .frame(width: 90, height: 90)
        .padding()
        .foregroundColor(darkText)
        .font(Font.headline.weight(.medium))
        .background(Color("YVR Light Blue"))
        .cornerRadius(25)
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
    }
}

