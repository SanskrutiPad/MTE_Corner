//
//  EmergencyCallView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-08-04.
//

import SwiftUI
var mainEmergencyNum = "911"
var airportOPSNum = "604-207-7022"


struct EmergencyCallView: View {
    //    Initializes Background Colour
        init() {
                UITableView.appearance().backgroundColor = UIColor(named: "YVR Light Blue")
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(darkText)]
            }
    
    
    var body: some View {
            Form {
                Text("Call 911")
                    .foregroundColor(darkText)
                    .font(.headline)
                
                            Button(action: {
                                let phone = "tel://"
                                let phoneNumberformatted = phone + mainEmergencyNum
                                guard let url = URL(string: phoneNumberformatted) else { return }
                                UIApplication.shared.open(url)
                               }) {
                                   HStack {
                                       Image(systemName: "phone.fill")
                                           .font(.system(size: 20))
                                       Text(mainEmergencyNum)
                                           .font(.system(size: 18))
                                           
                                   }
                                   .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                                   .padding()
                                   .font(Font.headline.weight(.medium))
                                   .foregroundColor(Color("YVR Dark Blue"))
                                   .background(lightGreyCol)
                                   .cornerRadius(25)
                               .shadow(color: .gray, radius: 3, x: 0, y: 2)
                            }
                Text("Call Airport OPS")
                    .foregroundColor(darkText)
                    .font(.headline)
                
                Button(action: {
                    let phone2 = "tel://"
                    let phoneNumberformat = phone2 + airportOPSNum
                    guard let url = URL(string: phoneNumberformat) else { return }
                    UIApplication.shared.open(url)
                   }) {
                       HStack {
                           Image(systemName: "phone.fill")
                               .font(.system(size: 20))
                           Text(airportOPSNum)
                               .font(.system(size: 18))
                       }
                           
                   }
                   .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                   .padding()
                   .font(Font.headline.weight(.medium))
                   .foregroundColor(Color("YVR Dark Blue"))
                   .background(lightGreyCol)
                   .cornerRadius(25)
               .shadow(color: .gray, radius: 3, x: 0, y: 2)
                }
                
            .navigationTitle("Emergency Call")
        
    }
}

struct EmergencyCallView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyCallView()
    }
}
