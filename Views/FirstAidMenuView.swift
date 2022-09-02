//
//  FirstAidMenuView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-29.
//

import SwiftUI


// ...
struct FirstAidForm: Identifiable {
  let id = UUID()
  let formName: String
  let description: String
}

private let firstAidFormList: [FirstAidForm] = [FirstAidForm(formName: "WorkSafeBC First Aid Form", description: "")]

struct FirstAidMenuView: View {
    @State var selectionWSBCFirstAidRecordForm: Int? = nil
    @State var selectionHazardousOccurenceInvestigationReport: Int? = nil
    @State var selectionWSBCEmployersReportOfInjuryOrOccupationalDisease: Int? = nil
    
    var body: some View {
        
        ZStack {
            Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
//            NavigationView {
//                    List(firstAidFormList) { item in
//                        Text(item.formName)
//                    }
                    
                Form {
                    
                    NavigationLink(destination: WSBCView(), tag: 1, selection: $selectionWSBCEmployersReportOfInjuryOrOccupationalDisease) {
                                    Button {
                                        print("WSBC First Aid Form tapped")
                                        self.selectionWSBCEmployersReportOfInjuryOrOccupationalDisease = 1
                                    } label: {
                                        VStack {
                                            Text("Employer's Report of Injury or Occupational Disease")
                                                .padding()
                                                .frame(alignment: .leading)
                                                .font(Font.headline.weight(.medium))
                                                }
                                        }
                                    }
                    
                    NavigationLink(destination: HazardousOccurrenceView(), tag: 1, selection: $selectionHazardousOccurenceInvestigationReport) {
                                    Button {
                                        print("Hazardous Occurence Investigation Report tapped")
                                        self.selectionHazardousOccurenceInvestigationReport = 1
                                    } label: {
                                        VStack {
                                            Text("Hazardous Occurence Investigation Report")
                                                .padding()
                                                .frame(alignment: .leading)
                                                .font(Font.headline.weight(.medium))
                                        }
                                                    

                            }
                        }
                    
                    
                    
                    NavigationLink(destination: WSBCFirstAidFormView(), tag: 1, selection: $selectionWSBCFirstAidRecordForm) {
                                    Button {
                                        print("WSBC First Aid Form tapped")
                                        self.selectionWSBCFirstAidRecordForm = 1
                                    } label: {
                                        VStack {
                                            Text("WorkSafeBC First Aid Record Form")
                                                .padding()
                                                .frame(alignment: .leading)
                                                .font(Font.headline.weight(.medium))
                                                }
//                                                    .frame(width: 150, height: 150)
                                                    

                            }
                        }
                    
                    
                    
                }
                .navigationTitle("First Aid Forms")
                .foregroundColor(darkText)
                
            }
            
//        }
        
    }
}

struct FirstAidMenuView_Previews: PreviewProvider {
    static var previews: some View {
        FirstAidMenuView()
    }
}
