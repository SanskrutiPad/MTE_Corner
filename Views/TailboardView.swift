//
//  TailboardView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-03.
//

import SwiftUI


struct TailboardView: View {
    @State private var taskDiscussed = [Task(name: "Discussed", isCompleted: false),Task(name: "N/A", isCompleted: false)]
    @State private var moreRequirementsDiscussed = [moreReqs(name1: "Yes", isCompleted1: false), moreReqs(name1: "No", isCompleted1: false), moreReqs(name1: "Attached", isCompleted1: false)]
    
    //    Initializes Background Colour
        init() {
                UITableView.appearance().backgroundColor = UIColor(named: "YVR Light Blue")
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(darkText)]
            }
    
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section (header: Text("Ensure that you discuss:").frame(alignment: .leading).foregroundColor(.white).cornerRadius(20).font(Font.headline.weight(.bold))){
                                    }
                    
//                    OCCUPATIONAL HEALTH & SAFETY
                    Section {
                        Group {
                                Text("Occupational Health & Safety")
                                    .bold()
                                    .foregroundColor(darkText)
                                    .padding(.top)
                                    .font(.system(size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            VStack {
                                Text("Canada Labor Code OSH Regulations")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                HStack {
                                    discussedOrNotApplicable()
                                }
                                
                            }
                            VStack {
                                Text("MTE Work Practice Code Chapters")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                HStack {
                                    discussedOrNotApplicable()
                                        .padding(.leading)
                                }
                                
                            }
                            VStack {
                                Text("Lock Out Procedures")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                    .frame(alignment: .leading)
                                HStack {
                                    discussedOrNotApplicable()
                                        .padding(.leading, 40)
                                }
                                
                            }
                            VStack {
                                Text("Confined Space Entry Procedures*")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                                
                            }
                            VStack {
                                Text("Fall Protection*")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                                
                            }
                            VStack {
                                Text("Safe cutting/Welding Practices*")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                                
                            }
                            VStack {
                                Text("Pertinent Sections of MSDS")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                                
                            }
                            VStack {
                                Text("Controlled Access to Work Area")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                                
                            }
                            VStack {
                                Text("Personal Protective Equipment")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                                
                            }
                        }
                        
                        Group {
                            VStack {
                                Text("Condition of tools, equipement, and vehicles")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                                Text("Electrical Safety")
                                    .bold()
                                    .foregroundColor(darkText)
                                    .padding(.top)
                                    .font(.system(size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            VStack {
                                Text("PPE (e.g. inspection of AR SR PPE)")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("Electrical Testing Equipment & Tools")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("Other Equipment (e.g. non conductive ladders)")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            
                            
                        }
                        

                    }
                    
//                    ENVIRONMENT
                    Section {
                        Text("Environment")
                            .bold()
                            .foregroundColor(darkText)
                            .padding(.top)
                            .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        VStack {
                            Text("Environmental Standards & Regulations")
                                .font(.system(size: 16))
                                .foregroundColor(darkText)
                            discussedOrNotApplicable()
                        }
                        VStack {
                            Text("Spill Response Plan")
                                .font(.system(size: 16))
                                .foregroundColor(darkText)
                            discussedOrNotApplicable()
                        }
                    }
//                    OPERATIONS
                    Section {
                        Group {
                            Text("Operations")
                                .bold()
                                .foregroundColor(darkText)
                                .padding(.top)
                                .font(.system(size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            VStack {
                                Text("Traffic Control")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("Airfield Lighting Control Regulations")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("AVOP Regulations")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("Airside Security Regulations")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("Airport Noise Regulations")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("Operations/Tower Notification")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("Weather conditions")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("Housekeeping")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                            VStack {
                                Text("Impact on emergency eqpt. & systems")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                discussedOrNotApplicable()
                            }
                        }
                        VStack {
                            Text("Public Safety")
                                .font(.system(size: 16))
                                .foregroundColor(darkText)
                            discussedOrNotApplicable()
                        }
                    }
                    Section {
                        Text("More Requirements")
                            .bold()
                            .foregroundColor(darkText)
                            .padding(.top)
                            .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        VStack {
                            Text("(*) Is a Fall Hazard Assessment Form Required?")
                                .font(.system(size: 16))
                                .foregroundColor(darkText)
                            yesNoAttached()
                        }
                        VStack {
                            Text("(*) Have Provisions for Rescue been addressed?")
                                .font(.system(size: 16))
                                .foregroundColor(darkText)
                            yesNoAttached()
                        }
                        VStack {
                            Text("(*) Is a Confined Space Permit Required?")
                                .font(.system(size: 16))
                                .foregroundColor(darkText)
                            yesNoAttached()
                        }
                        VStack {
                            Text("(*) Is a Hot Work Permit Required?")
                                .font(.system(size: 16))
                                .foregroundColor(darkText)
                            yesNoAttached()
                        }
                        
                                                
                    }
                    
                    Section {
                        Text("Review your assessment and revise if necessary:")
                            .font(.system(size: 18))
                            .foregroundColor(darkText)
                        Text("Signature P.I.C.")
                            .font(.system(size: 18))
                            .foregroundColor(darkText)
                        
                        HStack {
                            Button("Save Tailboard") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                            .padding()
                            .font(Font.headline.weight(.medium))
                            .foregroundColor(Color("YVR Dark Blue"))
                            .background(lightGreyCol)
                            .cornerRadius(25)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                            
                            Button("Submit") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                            .padding()
                            .font(Font.headline.weight(.medium))
                            .foregroundColor(Color("YVR Dark Blue"))
                            .background(lightGreyCol)
                            .cornerRadius(25)
                        .shadow(color: .gray, radius: 3, x: 0, y: 2)
                        }
                    }
                    
                }
                
                
            }
            .navigationTitle("Tailboard Assessment")
        }
    }
}



struct discussedOrNotApplicable: View {
    @State private var taskDiscussed = [Task(name: "Discussed", isCompleted: false),Task(name: "N/A", isCompleted: false)]
    var body: some View {
        HStack {
            
            List($taskDiscussed) { $taskD in
                Image(systemName: taskD.isCompleted ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        taskD.isCompleted.toggle()
                    }
                Text(taskD.name)
                    .foregroundColor(darkText)
                    .padding(.top)
                    .padding(.bottom)
                    .font(.system(size: 13))
            }
        }
    }
}


struct yesNoAttached: View {
    @State private var moreRequirementsDiscussed = [moreReqs(name1: "Yes", isCompleted1: false), moreReqs(name1: "No", isCompleted1: false), moreReqs(name1: "Attached", isCompleted1: false)]
    var body: some View {
        HStack {

            ForEach ($moreRequirementsDiscussed, id: \.self){ $req in
                Image(systemName: req.isCompleted1 ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        req.isCompleted1.toggle()
                    }
                Text(req.name1)
                    .foregroundColor(darkText)
                    .padding(.top)
                    .padding(.bottom)
                    .font(.system(size: 13))
            }
        }
    }
}


struct TailboardView_Previews: PreviewProvider {
    static var previews: some View {
        TailboardView()
    }
}
