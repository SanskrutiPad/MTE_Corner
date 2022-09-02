//
//  HazardousOccurrenceView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-08-12.
//

import SwiftUI

struct HazardousOccurrenceView: View {
    
//    Section 1
    @State private var selectedOccurrence = "Permanent"
        let occurrenceTypes = ["Explosion", "Loss of Consciousness", "Disabling Injury", "Emergency Procedure",  "Other (specify)"]
    
    init(){
            UITableView.appearance().backgroundColor = UIColor(named: "YVR Light Blue")
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(darkText)]
        }
    
    var body: some View {
        ZStack {
            Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
//            NavigationView {
                Form {
                    Section {
                        Picker("Type of Occurrence:", selection: $selectedOccurrence) {
                                                ForEach(occurrenceTypes, id: \.self) {
                                                    Text($0)
                                                }
                                        }
                    }
                }
                .navigationTitle("Hazardous Occurrence Investigation Report")
                
                
//            }
            
        }
    }
}

struct HazardousOccurrenceView_Previews: PreviewProvider {
    static var previews: some View {
        HazardousOccurrenceView()
    }
}
