//
//  TailboardView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-03.
//

import SwiftUI


struct TailboardView: View {
    
    
//    Textfield variables
    @State var location = ""
    @State var dateAndTime : Date = Date()
    @State var supervisor = ""
    @State var personInCharge = ""
    @State var safetyWatch = ""
    @State var workOrdernum = ""
    @State var taskMember1 = ""
    @State var taskMember2 = ""
    @State var taskMember3 = ""
    @State var taskMember4 = ""
    @State var taskMember5 = ""
    @State var taskMember6 = ""
    
//   Camera/Photo Library Sheet 1
    @State private var sheetIsShowing: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var srcType: UIImagePickerController.SourceType = .camera
    @State private var image: UIImage?
    @State private var text = ""
    
    //   Camera/Photo Library Sheet 2
        @State private var sheetIsShowing2: Bool = false
        @State private var showImagePicker2: Bool = false
        @State private var srcType2: UIImagePickerController.SourceType = .camera
        @State private var image2: UIImage?
    
// Hazard 1 Description
    @State var describeHaz1 = ""
    @State private var selectedWhoHaz1 = "Safety"
        let whoHaz1 = ["Safety", "Environment", "Operation"]
    @State var actionReq1 = "Type Here"
    
// Hazard 2 Description
    @State var describeHaz2 = ""
    @State private var selectedWhoHaz2 = "Safety"
        let whoHaz2 = ["Safety", "Environment", "Operation"]
    @State var actionReq2 = "Type Here"
    
    
    
    
    @State private var taskDiscussed = [TaskForForms(name: "Discussed", isCompleted: false),TaskForForms(name: "N/A", isCompleted: false)]
    @State private var moreRequirementsDiscussed = [moreReqs(name1: "Yes", isCompleted1: false), moreReqs(name1: "No", isCompleted1: false), moreReqs(name1: "Completed", isCompleted1: false)]
    
    //    Initializes Background Colour
        init() {
                UITableView.appearance().backgroundColor = UIColor(named: "YVR Light Blue")
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(darkText)]
            }
    
    
    var body: some View {
                VStack {
                    
                    
                    Form {
                        
                        Section(header: Text("Please fill out the following:").frame(alignment: .leading).foregroundColor(.white).cornerRadius(20).font(Font.headline.weight(.bold))) {
                            Group {
                                
                                TextField("Location", text: $location)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                DatePicker("Date & Time", selection: $dateAndTime,
                                           displayedComponents: [.date, .hourAndMinute])
                                        .fixedSize(horizontal: false, vertical: true)
                                        .foregroundColor(darkText)
                                TextField("Supervisor", text: $supervisor)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                TextField("Person in Charge", text: $personInCharge)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                TextField("Safety Watch", text: $safetyWatch)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                TextField("Work Order #", text: $workOrdernum)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                TextField("Task Members", text: $taskMember1)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                TextField("Task Members", text: $taskMember2)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                TextField("Task Members", text: $taskMember3)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                TextField("Task Members", text: $taskMember4)
                                    .padding(.top)
                                    .foregroundColor(.black)
                            }
                            
                            Group {
                                
                                TextField("Task Members", text: $taskMember5)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                TextField("Task Members", text: $taskMember6)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                
                            }
                            
                        }
                        
                        Section (header: Text("Brief Description of Job:").frame(alignment: .leading).foregroundColor(.white).cornerRadius(20).font(Font.headline.weight(.bold))){
                                        }
                        
                        Section {
//                            Hazard 1
                            Group {
                                Text("Hazards")
                                    .bold()
                                    .foregroundColor(darkText)
                                    .padding(.top)
                                    .font(.system(size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Hazard 1:")
                                        .padding(.top)
                                        .font(.system(size: 16))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                HStack {
                                    Image(uiImage: image ?? UIImage(named: "ImagePlaceholder")!)
                                        .resizable()
                                    
                                        .frame(width: 100, height: 100)
                                    Spacer()
                                    
                                    VStack {
                                        Button("Choose Picture") {
                                            self.sheetIsShowing = true
                                        }
                                        .padding(15)
                                        .background(Color.white)
                                        .foregroundColor(Color("YVR Dark Blue"))
                                        .cornerRadius(20)
                                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    //                    .actionSheet will be able to provide users the option of choosing photo from camera roll or choosing photo from image library
                                        .actionSheet(isPresented: $sheetIsShowing) {
                                            ActionSheet(title: Text("Choose"), buttons: [
                                                .default(Text("Photo Library")) {
                                                    self.showImagePicker = true
                                                    self.srcType = .photoLibrary
                                                },
                                                .default(Text("Camera")) {
                                                    self.showImagePicker = true
                                                    self.srcType = .camera
                                                },
                                                .cancel()
                                            ])
                                    }
                                        
                                    }
                                }
                                
                                TextField("Describe Hazard", text: $describeHaz1)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                Picker("Who:", selection: $selectedWhoHaz1) {
                                                        ForEach(whoHaz1, id: \.self) {
                                                            Text($0)
                                                        }
                                }.foregroundColor(darkText)
                                Text("Action Required:")
                                        .padding(.top)
                                        .foregroundColor(darkText)
                                        .font(.system(size: 16))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                TextEditor(text: $actionReq1)
                                    .padding()
                                    .foregroundColor(.black)
                                
                                
                            }
                            
//                            Hazard 2
                            Group {
                                Text("Hazard 2:")
                                        .padding(.top)
                                        .font(.system(size: 16))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                HStack {
                                    Image(uiImage: image2 ?? UIImage(named: "ImagePlaceholder")!)
                                        .resizable()
                                    
                                        .frame(width: 100, height: 100)
                                    Spacer()
                                    
                                    VStack {
                                        Button("Choose Picture") {
                                            self.sheetIsShowing2 = true
                                        }
                                        .padding(15)
                                        .background(Color.white)
                                        .foregroundColor(Color("YVR Dark Blue"))
                                        .cornerRadius(20)
                                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    //                    .actionSheet will be able to provide users the option of choosing photo from camera roll or choosing photo from image library
                                        .actionSheet(isPresented: $sheetIsShowing2) {
                                            ActionSheet(title: Text("Choose"), buttons: [
                                                .default(Text("Photo Library")) {
                                                    self.showImagePicker2 = true
                                                    self.srcType2 = .photoLibrary
                                                },
                                                .default(Text("Camera")) {
                                                    self.showImagePicker2 = true
                                                    self.srcType2 = .camera
                                                },
                                                .cancel()
                                            ])
                                    }
                                        
                                    }
                                }
                                
                                TextField("Describe Hazard", text: $describeHaz2)
                                    .padding(.top)
                                    .foregroundColor(.black)
                                Picker("Who:", selection: $selectedWhoHaz2) {
                                                        ForEach(whoHaz2, id: \.self) {
                                                            Text($0)
                                                        }
                                }.foregroundColor(darkText)
                                Text("Action Required:")
                                        .padding(.top)
                                        .foregroundColor(darkText)
                                        .font(.system(size: 16))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                TextEditor(text: $actionReq2)
                                    .padding()
                                    .foregroundColor(.black)
                                
                                
                            }
                        }
                        
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
                                    }.frame(maxWidth: .infinity)
                                    
                                }
                                VStack {
                                    Text("MTE Work Practice Code Chapters")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                    HStack {
                                        discussedOrNotApplicable()
                                            .padding(.leading)
                                    }.frame(maxWidth: .infinity)
                                    
                                }
                                VStack {
                                    Text("Lock Out Procedures")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        .frame(alignment: .leading)
                                    HStack {
                                            discussedOrNotApplicable()
                                            .padding(.leading, 40)
                                    }.frame(maxWidth: .infinity)
                                    
                                }
                                VStack {
                                    Text("Confined Space Entry Procedures*")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                    
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Fall Protection*")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                    
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Safe cutting/Welding Practices*")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                    
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Pertinent Sections of MSDS")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                    
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Controlled Access to Work Area")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                    
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Personal Protective Equipment")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                    
                                }.frame(maxWidth: .infinity)
                            }
                            
                            Group {
                                VStack {
                                    Text("Condition of tools, equipement, and vehicles")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)
                                
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
                                }.frame(maxWidth: .infinity)
                                VStack {
                                    Text("Electrical Testing Equipment & Tools")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)
                                VStack {
                                    Text("Other Equipment (e.g. non conductive ladders)")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)
                                
                                
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
                            }.frame(maxWidth: .infinity)
                            
                            VStack {
                                Text("Spill Response Plan")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                    discussedOrNotApplicable()
                            }.frame(maxWidth: .infinity)
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
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Airfield Lighting Control Regulations")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                    discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("AVOP Regulations")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                    discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Airside Security Regulations")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Airport Noise Regulations")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Operations/Tower Notification")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Weather conditions")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)
                                
                                VStack {
                                    Text("Housekeeping")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)

                                VStack {
                                    Text("Impact on emergency eqpt. & systems")
                                        .font(.system(size: 16))
                                        .foregroundColor(darkText)
                                        discussedOrNotApplicable()
                                }.frame(maxWidth: .infinity)

                            }
                            VStack {
                                Text("Public Safety")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                    discussedOrNotApplicable()
                            }.frame(maxWidth: .infinity)

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
                                    .fixedSize(horizontal: false, vertical: true)
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                    yesNoAttached()
                            }.frame(maxWidth: .infinity)

                            VStack {
                                Text("(*) Have Provisions for Rescue been addressed?")
                                    .fixedSize(horizontal: false, vertical: true)
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                    yesNoAttached()
                            }.frame(maxWidth: .infinity)

                            VStack {
                                Text("(*) Is a Confined Space Permit Required?")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                    yesNoAttached()
                            }.frame(maxWidth: .infinity)

                            VStack {
                                Text("(*) Is a Hot Work Permit Required?")
                                    .font(.system(size: 16))
                                    .foregroundColor(darkText)
                                    yesNoAttached()
                            }.frame(maxWidth: .infinity)

                            
                                                    
                        }
                        
                        Section {
                            Text("Review your assessment and revise if necessary:")
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.system(size: 18))
                                .foregroundColor(darkText)
                            Text("Signature")
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
            
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(image: self.$image, sheetIsShown: self.$showImagePicker, srcType: self.srcType)
            }
        }
    
}



struct discussedOrNotApplicable: View {
    @State private var taskDiscussed = [TaskForForms(name: "Discussed", isCompleted: false),TaskForForms(name: "N/A", isCompleted: false)]
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
    @State private var moreRequirementsDiscussed = [moreReqs(name1: "Yes", isCompleted1: false), moreReqs(name1: "No", isCompleted1: false), moreReqs(name1: "Completed", isCompleted1: false)]
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
