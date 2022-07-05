//
//  WSBCFirstAidFormView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-22.
//

import SwiftUI

//    DIGITAL SIGNATURE
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false

struct WSBCFirstAidFormView: View {
    init(){
            UITableView.appearance().backgroundColor = UIColor(named: "YVR Light Blue")
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(darkText)]
        }
    
    
    //    Employer Info
        @State var sequenceNum = ""
        @State var name = ""
        @State var occupation = ""
        @State var dateOfInjury : Date = Date()
        @State var timeOfInjury : Date = Date()
        @State var followUpReportDateAndTime : Date = Date()
        @State var initialReportSeqNum = ""
        @State var subesequentReportSeqNum = ""
        @State var descOfInjuryExpIll = ""
        @State var descOfNatureOfInjury = ""
        @State var descOfTreatmentGiven = ""
        @State var witness1 = ""
        @State var witness2 = ""
        @State var arrangementMadeRelatingToWorker = ""
        @State var firstAidAttendantName = ""
    
    


//        @State var city = ""
    
    
    var body: some View {
        NavigationView {
                Form {
                    Section(header: Text("This record must be kept by the employer for three (3) years. This form must be kept at the employer's workplace. Do NOT submit to WorkSafeBC.").frame(alignment: .leading).foregroundColor(.white).font(Font.headline.weight(.bold)).padding(.bottom)) {
                        Group {
                            TextField("Sequence Number", text: $sequenceNum)
                                .padding(.top)
                                .foregroundColor(.black)
                            TextField("Name", text: $name)
                                .padding(.top)
                                .foregroundColor(.black)
                            TextField("Occupation", text: $occupation)
                                .padding(.top)
                                .foregroundColor(.black)
                            DatePicker("Date of injury: ", selection: $dateOfInjury,
                                       displayedComponents: [.date])
                                        .accentColor(darkText)
                            DatePicker("Time of injury: ", selection: $timeOfInjury,
                                       displayedComponents: [.hourAndMinute])
                                        .accentColor(darkText)
                            DatePicker("Initial reporting date and time: ", selection: $timeOfInjury,
                                       displayedComponents: [.hourAndMinute])
                                        .accentColor(darkText)
                            Text("Follow-up report date and time")
                            DatePicker("", selection: $followUpReportDateAndTime,
                                       displayedComponents: [.date, .hourAndMinute])
                                        .accentColor(darkText)
                            TextField("Initial Report sequence number", text: $initialReportSeqNum)
                                .padding(.top)
                                .foregroundColor(.black)
                            TextField("Subsequent report sequence number", text: $subesequentReportSeqNum)
                                .padding(.top)
                                .foregroundColor(.black)
                        }
                        Group {
                            Text("Description of how the injury, exposure, or illness occurred (What happened?)")
                            TextEditor( text: $descOfInjuryExpIll)
                                .foregroundColor(.black)
                            Text("Description of the nature of the injury, exposure, or illness (What you see - signs and symptoms)")
                            TextEditor( text: $descOfNatureOfInjury)
                                .foregroundColor(.black)
                            Text("Description of the treatment given (What did you do?)")
                            TextEditor( text: $descOfTreatmentGiven)
                                .foregroundColor(.black)
                            Text("Name of witnesses")
                            TextField("1.", text: $witness1)
                                .padding(.top)
                                .foregroundColor(.black)
                            TextField("2.", text: $witness2)
                                .padding(.top)
                                .foregroundColor(.black)
                            Text("Arrangement made relating to the worker (return to work/medical aid/ambulance/follow-up")
                        }
                        
                        Group {
                            TextEditor(text: $arrangementMadeRelatingToWorker)
                                .padding(.top)
                                .foregroundColor(.black)
                            VStack {
                                Text("Provided worker handout ")
                                    .padding(.top)
                                    .font(.system(size: 16))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    yesNoCheckboxes()
                            }
                            VStack {
                                Text("Alternate duty options were discussed ")
                                    .padding(.top)
                                    .font(.system(size: 16))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    yesNoCheckboxes()
                            }
                            VStack {
                                Text("A form to assist in return to work and follow-up was sent with the worker to medical aid")
                                    .padding(.top)
                                    .font(.system(size: 16))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    yesNoCheckboxes()
                            }
                            TextField("First aid attendant's name (please print)", text: $firstAidAttendantName)
                                .padding(.top)
                                .foregroundColor(.black)
                        }
                        
//                        NavigationLink(destination: SafetyToolboxAnswerView(), tag: 1, selection: $selectionView) {
//                            Button (action:{
//                                print("Submit Button tapped")
//                                self.selectionAnswerView = 1
//                            })  {
//                                HStack {
//                                    Text("Submit")
//                                }
//                                .padding(20)
//                                .background(Color.white)
//                                .foregroundColor(Color("YVR Dark Blue"))
//                                .cornerRadius(20)
//                                .shadow(color: .gray, radius: 2, x: 0, y: 2)
//
//                            }
//                        }
                        
                    }.textCase(nil)
                }
                .navigationTitle("First Aid Record")
                .foregroundColor(darkText)
        }
        
    }
}




struct WSBCFirstAidFormView_Previews: PreviewProvider {
    static var previews: some View {
        WSBCFirstAidFormView()
    }
}
