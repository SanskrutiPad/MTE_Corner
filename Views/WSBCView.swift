//
//  Tailboardview.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-24.
//

import SwiftUI
import UniformTypeIdentifiers



struct WSBCView: View {
    
//    Initializes Background Colour
    init(){
            UITableView.appearance().backgroundColor = UIColor(named: "YVR Light Blue")
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(darkText)]
        }
    
//    Employer Info
    @State var employeeName = ""
    @State var typeBus = ""
    @State var wsbcAccNum = ""
    @State var classUnitNum = ""
    @State var opLocNum = ""
    @State var empAddLine1 = ""
    @State var empContactLastName = ""
    @State var firstName = ""
    @State var empAddLine2 = ""
    @State var empContactTelephone = ""
    @State var ext = ""
    @State var empContactFax = ""
    @State var city = ""
    @State var provState = ""
    @State var empPayContLastName = ""
    @State var firstName2 = ""
    @State var country = ""
    @State var postalZip = ""
    @State var empPayContactTelephone = ""
    @State var ext2 = ""
    @State var empPayContactFax = ""
    
//    Worker Info
    @State var workerLastName = ""
    @State var workerFirstName = ""
    @State var workerMiddleInitial = ""
    @State var workerGender = ""
    @State var workerDateOfBirth : Date = Date()
    @State var workerHomePhone = ""
    @State var workerSIN = ""
    @State var workerAddress1 = ""
    @State var workerAddress2 = ""
    @State var workerCity = ""
    @State var workerProvince = ""
    @State var workerCountry = ""
    @State var workerPostalCode = ""
    
//    Worker Info Section 2
    @State var workerOccupation = ""
    @State var workerEmployedForTwelve = ""
    @State var workerStartDateIfYes = ""
    
    @State private var selectedEmployment = "Permanent"
        let employmentTypes = ["Permanent", "Temporary", "Full time", "Part time", "Apprentice", "Volunteer", "Student", "New entrant to workforce", "Self-employed", "Principal/partner or relative of employer", "Hired on a contract basis", "Casual", "Other (specify)"]
    
    
//    Incident information
    @State var incidentDate : Date = Date()
    @State var incidentTime : Date = Date()
    @State var exposurePeriodFromDate : Date = Date()
    @State var exposurePeriodToDate : Date = Date()
    @State var injuryFirstReportedDate : Date = Date()
    @State var namePersonReportedTo = ""
    @State var describeHowIncidentHappened = ""
    @State var describeInjInDetail = ""
    @State private var sideOfBodyInjured = "Left"
        let sidesOfBody = ["Left", "Right", "Not Applicable"]
    @State var describeWorkIncidentLocation = ""
    @State private var yesNo = [TaskForForms(name: "Yes", isCompleted: false),TaskForForms(name: "No", isCompleted: false)]
    
    
//    PAGE 2
    @State var wrkrLastName = ""
    @State var wrkrFirstName = ""
    @State var wrkrMiddleInitial = ""
    @State var wrkrWSBCClaimNum = ""
    @State var wrkrSIN = ""
    @State var wrkrPersonalHealthNum = ""
    @State var wrkrDateOfIncident : Date = Date()
    @State var wrkrDateOfBirth : Date = Date()
    @State private var selectedLbOrKg = "lb"
        let LbOrKg = ["lb", "kg"]
    @State private var selectedContributingFactors = "Lifting"
    let contributingFactors = ["lifiting", "Overexertion", "Repetitive", "Slip or Trip", "Twist", "Fall", "Struck", "Crush", "Sharp Edge", "Fire or Explosion", "Harmful Substances in the work environment", "Animal Bite", "Assault", "Motor Vehicle accident", "Unsure/other (please explain below)"]
    @State var firstAidAttendant = ""
    @State var firstAidAttendantDate : Date = Date()
    @State var providerName = ""
    @State var providerNameDate : Date = Date()
    
    
    
    var body: some View {
        
            
//            NavigationView {
                ZStack {
                    VStack {
                        
                            Form {
                                
                                Section (header: Text("Employer's Report of Injury or Occupational Disease").frame(alignment: .leading).foregroundColor(.white).font(Font.headline.weight(.bold))){
                                                }
                                        
//                                        EMPLOYER INFORMATION
                                Section (header: Text("Please enter Employer Information").padding().frame(alignment: .leading).foregroundColor(.white).font(Font.caption.weight(.semibold))){
                                            Group {
                                                
                                                    Text("Employer Information")
                                                        .bold()
                                                        .padding(.top)
                                                        .font(.system(size: 20))
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                    
                                                TextField("Employer's name (as registerd with WorkSafeBC", text: $employeeName)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Type of business", text: $typeBus)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("WorkSafeBC account number", text: $wsbcAccNum)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Classification unit number", text: $classUnitNum)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Operating location number", text: $opLocNum)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Employer address line 1 (mailing)", text: $empAddLine1)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Employer contact last name", text: $empContactLastName)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("First name", text: $firstName)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                            }
                                            
                                            Group {
                                                TextField("Employer address line 2 (mailing)", text: $empAddLine2)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Employer contact telephone (and area code)", text: $empContactTelephone)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Extension", text: $ext)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Employer contact fax (and area code)", text: $empContactFax)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("City", text: $city)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Province/State", text: $provState)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Employer payroll contact last name", text: $empPayContLastName)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("First name", text: $firstName2)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Country (if not Canada)", text: $country)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Postal code/zip", text: $postalZip)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                            }
                                            
                                            Group {
                                                TextField("Employer payroll contact telephone (and area code)", text: $empPayContactTelephone)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Extension", text: $ext2)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                TextField("Employer payroll contact fax (and area code)", text: $empPayContactFax)
                                                    .padding(.top)
                                                    .foregroundColor(.black)
                                                Button("Clear Form") {
                                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                                }
//                                                .frame(width: 90, height: 13, alignment: .center)
                                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                                                .padding()
                                                .font(Font.headline.weight(.medium))
                                                .foregroundColor(Color("YVR Dark Blue"))
                                                .background(lightGreyCol)
                                                .cornerRadius(25)
                                                .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                            }
                                        }
                                            
                                
//                                WORKER INFORMATION
                                Section (header: Text("Please enter Worker Information").padding().frame(alignment: .leading).foregroundColor(.white).font(Font.caption.weight(.semibold))){
                                                Group {
                                                        Text("Worker Information")
                                                                .bold()
                                                                .padding(.top)
                                                                .font(.system(size: 20))
                                                            .frame(maxWidth: .infinity, alignment: .leading)
                                                       
                                                    TextField("Worker last name", text: $workerLastName)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    TextField("Worker first name", text: $workerFirstName)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    TextField("Middle Initial", text: $workerMiddleInitial)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    TextField("Gender (Type M/F)", text: $workerGender)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    DatePicker("Date of Birth: ", selection: $workerDateOfBirth,
                                                               displayedComponents: [.date])
                                                        .accentColor(darkText)
//                                                        .padding(.top)
                                                    TextField("Home Phone Number (with area code)", text: $workerHomePhone)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    TextField("Social Insurance number", text: $workerSIN)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    TextField("Address Line 1", text: $workerAddress1)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    TextField("Address Line 2", text: $workerAddress2)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                }
                                                Group {
                                                    TextField("City", text: $workerCity)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    TextField("Province/State", text: $workerProvince)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    TextField("Country (if not Canada)", text: $workerCountry)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    TextField("Postal code/zip", text: $workerPostalCode)
                                                        .padding(.top)
                                                        .foregroundColor(.black)
                                                    Button("Clear Form") {
                                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                                    }
                                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                                                    .padding()
                                                    .font(Font.headline.weight(.medium))
                                                    .foregroundColor(Color("YVR Dark Blue"))
                                                    .background(lightGreyCol)
                                                    .cornerRadius(25)
                                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                                }

                                            }
//                                WORKER INFORMATION PT 2
                                
                                Section (header: Text("Please enter worker's occupation details").padding().frame(alignment: .center).foregroundColor(.white).font(Font.caption.weight(.semibold))){
                                   
                                        Text("1. What is the worker's occupation?")
                                                .bold()
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        TextField("Type Here", text: $workerPostalCode)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        Text("2. Has the worker been employed by this firm for less than 12 mos (Y/N)?")
                                                .bold()
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        TextField("Type Here", text: $workerEmployedForTwelve)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        Text("3. If yes, start date (yyyy-mm-dd)?")
                                                .bold()
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        TextField("Type Here", text: $workerStartDateIfYes)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        Text("4. At the time of the injury, was the worker (select all that apply)?")
                                                .bold()
                                                .padding(.top)
                                                .font(.system(size: 16))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    Picker("Employment Type:", selection: $selectedEmployment) {
                                                            ForEach(employmentTypes, id: \.self) {
                                                                Text($0)
                                                            }
                                                    }
                                    .foregroundColor(.black)
                                    Button("Clear Form") {
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    }
//                                    .frame(width: 90, height: 13)
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                                    .padding()
                                    .font(Font.headline.weight(.medium))
                                    .foregroundColor(Color("YVR Dark Blue"))
                                    .background(lightGreyCol)
                                    .cornerRadius(25)
                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                    
                                        
                                    
                                }
                                
//                                INCIDENT INFORMATION
                                
                                Section (header: Text("Please enter Incident Information").padding().frame(alignment: .leading).foregroundColor(.white).font(Font.caption.weight(.semibold))){
                                    Group {
                                        HStack {
                                            Text("Incident Information")
                                                    .bold()
                                                    .padding(.top)
                                                    .font(.system(size: 20))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        }
                                        DatePicker("5. Date of incident: ", selection: $incidentDate,
                                                   displayedComponents: [.date])
                                                    .accentColor(darkText)
                                        DatePicker("5. Time of incident: ", selection: $incidentTime,
                                                   displayedComponents: [.hourAndMinute])
                                                    .accentColor(darkText)
                                        
                                        Text("6. Period of exposure resulting in occupational disease:")
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        DatePicker("From", selection: $exposurePeriodFromDate,
                                                   displayedComponents: [.date])
                                                    .accentColor(darkText)
                                        DatePicker("To", selection: $exposurePeriodToDate,
                                                   displayedComponents: [.date])
                                                    .accentColor(darkText)
                                        Text("7. Did the worker report injury or exposure to employer?")
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        DatePicker("8. The injury or disease was first reported to employer on", selection: $injuryFirstReportedDate,
                                                   displayedComponents: [.date])
                                                    .accentColor(darkText)
                                        Text("8. To (please check one)")
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        Text("9. Name of the person reported to: ")
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        
                                    }
                                    Group {
                                        TextField("Type Here", text: $namePersonReportedTo)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        Text("10. Describe how the incident happened: ")
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        TextField("Type Here", text: $describeHowIncidentHappened)
                                            .padding(.top)
                                            .frame(height: 150, alignment: .top)
                                            .foregroundColor(.black)
                                        Text("11. Describe how the injury in detail (what part of the body was injured): ")
                                            .fixedSize(horizontal: false, vertical: true)
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        TextField("Type Here", text: $describeInjInDetail)
                                            .padding(.top)
                                            .frame(height: 150, alignment: .top)
                                            .foregroundColor(.black)
                                        Picker("12. Side of body injured:", selection: $sideOfBodyInjured) {
                                                                ForEach(sidesOfBody, id: \.self) {
                                                                    Text($0)
                                                                }
                                        }.foregroundColor(darkText)
                                        Text("13. Describe the work incident location (address, city, province) and where incident occurred (e.g. shop floor, lunchroom, parking lot): ")
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        TextField("Type Here", text: $describeWorkIncidentLocation)
                                            .padding(.top)
                                            .frame(height: 150, alignment: .top)
                                            .foregroundColor(.black)
                                        VStack {
                                            Text("14. Did the injury(ies) or exposure result from a specific incident? ")
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                            yesNoCheckboxes()
                                        }.fixedSize(horizontal: false, vertical: true)
                                        

                                    }
                                    
                            
                            }
                                Section(header: Text("If faxing form, please complete this section and fax both sides of page. Missing pages may result in delays in processing.").frame(alignment: .leading).foregroundColor(.white).font(Font.headline.weight(.bold))){
                                        TextField("Worker last name", text: $wrkrLastName)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        TextField("First Name", text: $wrkrFirstName)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        TextField("Middle Initial", text: $wrkrMiddleInitial)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        TextField("WorkSafeBC Claim Number (if known)", text: $wrkrWSBCClaimNum)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        TextField("Social Insurance Number", text: $wrkrSIN)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        TextField("Personal Health Number", text: $wrkrPersonalHealthNum)
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        DatePicker("Date of Incident", selection: $wrkrDateOfIncident,
                                                   displayedComponents: [.date])
                                                    .accentColor(darkText)
                                        DatePicker("Date of Birth", selection: $wrkrDateOfBirth,
                                                   displayedComponents: [.date])
                                                    .accentColor(darkText)
                                }
                                
                                Section {
                                    Group {
                                        Picker("15. Contributing Factors - select at least one, and as many as possible:", selection: $selectedLbOrKg) {
                                                                ForEach(LbOrKg, id: \.self) {
                                                                    Text($0)
                                                                }
                                        }.foregroundColor(darkText)
                                            .fixedSize(horizontal: false, vertical: true)
                                        Picker("15.", selection: $selectedContributingFactors) {
                                                                ForEach(contributingFactors, id: \.self) {
                                                                    Text($0)
                                                                }
                                        }.foregroundColor(darkText)
                                        VStack {
                                            Text("16. Were there any witnesses? ")
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                yesNoCheckboxes()
                                        }
                                        VStack {
                                            Text("17. Did the incident occur in British Columbia? ")
                                                .fixedSize(horizontal: false, vertical: true)
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                yesNoCheckboxes()
                                        }
                                        VStack {
                                            Text("18. Were the worker's actions at the time of injury for the purpose of your business? ")
                                                .fixedSize(horizontal: false, vertical: true)
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                yesNoCheckboxes()
                                        }
                                        VStack {
                                            Text("19. Did the incident occur on employer's premises or authorized worksite? ")
                                                .fixedSize(horizontal: false, vertical: true)
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                yesNoCheckboxes()
                                        }
                                        VStack {
                                            Text("20. Did the incident occur during the worker's normal shift? ")
                                                .fixedSize(horizontal: false, vertical: true)
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                yesNoCheckboxes()
                                        }
                                        VStack {
                                            Text("21. Was the worker performing their regular duties at the time of the incident? ")
                                                .fixedSize(horizontal: false, vertical: true)
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                yesNoCheckboxes()
                                        }
                                        VStack {
                                            Text("22. Did the worker recieve first aid? ")
                                                .padding(.top)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                yesNoCheckboxes()
                                            
                                        }
                                        Text("If yes, please provide first aid attendant name (if known)")
                                            .fixedSize(horizontal: false, vertical: true)

                                            
                                    }
                                    
                                    Group {
                                        VStack {
                                            TextField("Type here", text: $firstAidAttendant)
                                                .padding(.top)
                                            .foregroundColor(.black)
                                            DatePicker("Date", selection: $firstAidAttendantDate,
                                                       displayedComponents: [.date])
                                                        .accentColor(darkText)
                                        }
                                        Text("23. Did the worker go to the hospital, clinic, or visit a physician or qualified practitioner? ")
                                            .padding(.top)
                                            .font(.system(size: 16))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            yesNoCheckboxes()
                                        Text("If yes, please provide provider name (if known)")
                                            .fixedSize(horizontal: false, vertical: true)
                                        VStack {
                                            TextField("Type here", text: $providerName)
                                                .padding(.top)
                                            .foregroundColor(.black)
                                            DatePicker("Date", selection: $providerNameDate,
                                                       displayedComponents: [.date])
                                                        .accentColor(darkText)
                                        }
                                        
                                        
                                    }
                                }

}
                    
                        
                        }
                        
                        .navigationTitle("WorkSafeBC")
                        .foregroundColor(darkText)
                        
                    
                }
                
            }
        
        
//    }
    
}

struct yesNoCheckboxes: View {
    @State private var yesNo = [TaskForForms(name: "Yes", isCompleted: false),TaskForForms(name: "No", isCompleted: false)]
    var body: some View {
        HStack {
            
            List($yesNo) { $yesno in
                Image(systemName: yesno.isCompleted ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        yesno.isCompleted.toggle()
                    }
                Text(yesno.name)
                    .foregroundColor(darkText)
                    .padding(.top)
                    .padding(.bottom)
                    .font(.system(size: 16))
            }
        }
    }
}

struct WSBCView_Previews: PreviewProvider {
    static var previews: some View {
        WSBCView()
    }
}


//                                HStack {
//                                    Button("Clear Form") {
//                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                                    }
//                                    .frame(width: 120, height: 13)
//                                    .padding()
//                                    .font(Font.headline.weight(.medium))
//                                    .foregroundColor(Color("YVR Dark Blue"))
//                                    .background(lightGreyCol)
//                                    .cornerRadius(25)
//                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
//                                    Button("Next") {
//                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                                    }
//                                    .frame(width: 120, height: 13)
//                                    .padding()
//                                    .font(Font.headline.weight(.medium))
//                                    .foregroundColor(Color("YVR Dark Blue"))
//                                    .background(lightGreyCol)
//                                    .cornerRadius(25)
//                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
//                                }
