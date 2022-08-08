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
    @State var selectionEmergencyCall: Int? = nil
    @State var selectionFirstAid: Int? = nil
    @State var selectionTailboardMenuView: Int? = nil
    @State var selectionAppFeedbackView: Int? = nil
    
   
    var body: some View {
//---------------------------------------- HOME PAGE -------------------------------------------------------
//        NavigationView {
            ZStack {
                Color("YVR Light Blue").ignoresSafeArea(.all)
                ScrollView {
                    
                    VStack {
                                // App 'Header'
                                HStack {
                                    
                                    Image("Logo").resizable().aspectRatio(contentMode:.fit)
                                        .shadow(color: .blue, radius: 2, x: 0, y: 2)
                                        
                                    Text("Maintenance Corner")
                                        .padding()
//                                        .font(.system(size: 20))
                                        .foregroundColor(darkText)
                                        .font(Font.headline.weight(.medium))
                                        .frame(maxWidth: .infinity, alignment: . center)
                                        
                                    
                                }
                                Divider().background(Color.black)
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
                                                        .background(Color("lightGreyUni"))
                                                        .cornerRadius(25)
                                                        .shadow(color: .blue, radius: 2, x: 0, y: 2)

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
                                                                Text("Dashboard")
                                                                Image(systemName: "chart.bar")
                                                                    .padding()
                                                                    .font(.system(size: 60))
                                                            }
                                                        }
                                                        .frame(width: 150, height: 150)
                                                        .padding()
                                                        .font(Font.headline.weight(.medium))
                                                        .background(Color("lightGreyUni"))
                                                        .foregroundColor(darkText)
                                                        .cornerRadius(25)
                                                        .shadow(color: .blue, radius: 2, x: 0, y: 2)
                                                    }
                                                    
                                                }
                                
                                // Line #2 of buttons
                                HStack {
                                    
                                    //                                  EMERGENCY CALL BUTTON
                                    NavigationLink(destination: EmergencyCallView(), tag:1, selection: $selectionEmergencyCall) {
                                        Button {
                                                                                print("Emergency Call Button Pressed")
                                            self.selectionEmergencyCall = 1
                                                                            } label: {
                                                                                VStack {
                                                                                    Text("Emergency Call")
                                                                                    Image(systemName: "exclamationmark.circle")
                                                                                        .font(.system(size: 40))
                                                                                        .foregroundColor(darkText)
                                                                                    
                                                                                }
                                                                            }
                                                                            .frame(width: 90, height: 90)
                                                                            .padding()
                                                                            .foregroundColor(darkText)
                                                                            .font(Font.headline.weight(.medium))
                                                                            .background(Color("lightGreyUni"))
                                                                            .cornerRadius(25)
                                                                        .shadow(color: .red, radius: 2, x: 0, y: 2)
                                    }

                                                
                                    
                                    
                                    
    //                                FIRST AID BUTTON
                                    NavigationLink(destination: FirstAidMenuView(), tag:1, selection: $selectionFirstAid) {
                                        Button {
                                            print("FirstAid pressed")
                                            self.selectionFirstAid = 1
                                        } label: {
                                            VStack {
                                                Text("First Aid")
                                                    .padding(.horizontal)
                                                Image(systemName: "cross")
                                                    .font(.system(size: 40))
                                                
                                            }
                                        }
                                        .frame(width: 90, height: 90)
                                                .padding()
                                                .font(Font.headline.weight(.medium))
                                                .foregroundColor(darkText)
                                                .background(Color("lightGreyUni"))
                                                .cornerRadius(25)
                                                .shadow(color: .blue, radius: 2, x: 0, y: 2)
                                    }
                                    
                                    
                                    
//                                    TAILBOARD BUTTON
//                                    TailboardButton()
                                    NavigationLink (destination: TailboardMenuView(), tag:1, selection: $selectionTailboardMenuView) {
                                        Button{
                                            print("FirstAid pressed")
                                            self.selectionTailboardMenuView = 1
                                                } label: {
                                                    VStack {
                                                        Text("Tailboard")
                                                        Image(systemName: "doc.on.clipboard")
                                                            .font(.system(size: 35))
                                                    }
                                                }
                                                .frame(width: 90, height: 90)
                                                .padding()
                                                .font(Font.headline.weight(.medium))
                                                .foregroundColor(darkText)
                                                .background(Color("lightGreyUni"))
                                                .cornerRadius(25)
                                            .shadow(color: .blue, radius: 2, x: 0, y: 2)
                                    }
                                }
                                
                                // Line #3 of buttons
                                HStack {
                                    
//                                    SHARE BUTTON writes an email to share app url
                                    Button {
                                        share_Sheet()
                                    } label: {
                                        VStack {
                                            Text("Share App")
                                            Image(systemName: "arrowshape.turn.up.left.2")
                                                .padding(.bottom, 5)
                                                .font(.system(size: 40))
                                        }
                                    }
                                    .frame(width: 90, height: 90)
                                    .font(Font.headline.weight(.medium))
                                    .padding()
                                    .foregroundColor(darkText)
                                    .background(Color("lightGreyUni"))
                                    .cornerRadius(25)
                                    .shadow(color: .blue, radius: 2, x: 0, y: 2)
                                    
                                    
                                   
                                    
//                                    YVR NEWS BUTTON
                                    Button {
                                        if let ourYVRurl = URL(string: "https://ouryvr.yvr.com/") {
                                            UIApplication.shared.open(ourYVRurl)
                                        }
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
                                    .background(Color("lightGreyUni"))
                                    .cornerRadius(25)
                                    .shadow(color: .blue, radius: 2, x: 0, y: 2)
                                    
                                    
                                    Button(action: {
                                        if let plannerURL = URL(string: "https://tasks.office.com/yvr.ca/en-US/Home/Planner/") {
                                                            UIApplication.shared.open(plannerURL)
                                        }
                                                }) {
                                                    VStack {
                                                        
                                                        Text("Report to Planner")
                                                        Image(systemName: "arrow.right.doc.on.clipboard")
//                                                            .padding()
                                                            .font(.system(size: 30))
                                                    }
                                                    .frame(width: 90, height: 90)
                                                    .padding()
                                                    .font(Font.headline.weight(.medium))
                                                            .foregroundColor(darkText)
                                                            .background(Color("lightGreyUni"))
                                                            .cornerRadius(25)
                                                            .shadow(color: .blue, radius: 2, x: 0, y: 2)
                                                }
                                    

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
                            .background(Color("lightGreyUni"))
                            .cornerRadius(25)
                            .shadow(color: .blue, radius: 2, x: 0, y: 2)
                        }
                                
                               
                                
                                Spacer()
                                Spacer()
                            
                            
                    }
                }
//            }
        }   // end of Home Page
        .accentColor(Color("YVR Dark Blue"))
    
    }
    // function pops up a share sheet for 'Share' button
    func share_Sheet() {
        
        }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(selectionWelcome: 0, selectionDashboard: 0, selectionFirstAid: 0)
    }
}


