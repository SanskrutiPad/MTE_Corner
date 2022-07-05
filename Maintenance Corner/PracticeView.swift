//
//  PracticeView.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-09.
//

import SwiftUI

struct PracticeView: View {
    @State var selected: Bool
    let onTapToActivate: ()-> Void//action when taped to activate
    let onTapToInactivate: ()-> Void //action when taped to inactivate
    
    
    var body: some View {
        ZStack {
            
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Topic 01")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("Winter weather can cause surfaces to ice over and become a slipping hazard. Icy surfaces can be mitigated by")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                
                Button (action:{
                    print("button pressed")
                })  {
                    HStack {
                        if selected {
//                            ZStack {
                                Circle()
                                    .fill(Color.black.opacity(0.2))
                                    .frame(width: 20, height: 20)
                                Circle()
                                    .fill(Color.black.opacity(0.5))
                                    .frame(width: 8, height: 8)
                            
//                        }
                            .onTapGesture{self.onTapToInactivate()}
                            
                        } else {
                            Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                                .onTapGesture{self.onTapToActivate()}
                        }
                        
                        Text("A. Pouring hot water over the affected area.")
                            .frame( minWidth: 100, maxWidth: .infinity, minHeight: 44, alignment: .leading)
                    }
                        
                    .padding()
                    .foregroundColor(Color("YVR Dark Blue"))
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                }
                
                
                Button (action:{
                    print("button pressed")
                })  {
                    HStack {
                        Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                        Text("B. Pouring sand/salt over the affected area.")
                            .frame( minWidth: 100, maxWidth: .infinity, minHeight: 44, alignment: .leading)
                    }
                    .padding()
                    .background(Color.white)
                    .foregroundColor(Color("YVR Dark Blue"))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        
                }
                
                
                Button (action:{
                    print("button pressed")
                })  {
                    HStack {
                        Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                        Text("C. Using a blow-dryer on the affected area.  ")
                            .frame( minWidth: 100, maxWidth: .infinity, minHeight: 44, alignment: .leading)
                            
                    }
                    .padding()
                    .background(Color.white)
                    .foregroundColor(Color("YVR Dark Blue"))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    
                        
                }
                
                
            }
        }
        
        
    }
    
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView(selected: false, onTapToActivate: {}, onTapToInactivate: {})
    }
}
