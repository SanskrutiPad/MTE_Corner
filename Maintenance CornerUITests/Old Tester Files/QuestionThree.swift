//
//  QuestionThree.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-21.
//

import SwiftUI

struct QuestionThree: View {
    @State public var selectedQ3: Int?
    let q3Options = ["A. Keeping the jobsite clean and storing equipment away properly. ", "B. Marking objects left out on the jobsite with red marker flags. ", "C. Poking at the snow until objects are found. "]
    
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 03")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("Snowfall can conceal objects that pose a tripping hazard. This hazard can be avoided by:")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                VStack {
                    ForEach(0..<q3Options.count) { q3opt in
                                    Button(action: {
                                        self.selectedQ3 = q3opt
                                    }) {
                                        Text(self.q3Options[q3opt])
                                            .padding()
                                            .frame(width:350, height: .infinity,  alignment: .leading)
                                            .foregroundColor(darkText)
                                            .background(self.selectedQ3 == q3opt ? Color("buttonselectGreen") : Color.white)
                                            .clipShape(Capsule())
//                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                    .padding(.leading)
                                    .padding(.trailing)
                        
                                }
                    
                }
                
                .padding(.bottom, 30)
            }
        }
    }
}

struct QuestionThree_Previews: PreviewProvider {
    static var previews: some View {
        QuestionThree(selectedQ3: 0)
    }
}
