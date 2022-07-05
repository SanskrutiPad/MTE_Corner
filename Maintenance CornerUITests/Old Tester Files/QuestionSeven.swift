//
//  QuestionSeven.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-21.
//

import SwiftUI

struct QuestionSeven: View {
    @State public var selectedQ7: Int?
    let q7Options = ["A. Wear appropriate (layered) clothing.    ", "B. Work as quickly as possible to get out of the cold.   ", "C. Maintain a strong and healthy diet. ", "D. Wear summer outfits. ", "E. Pace yourself while working outdoors.  "]
    
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 07")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("Cold temperatures pose a potential occurrence for frostbite and hypothermia. To avoid this hazard, it is best to: [Choose all that apply]  ")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                VStack {
                    ForEach(0..<q7Options.count) { q7opt in
                                    Button(action: {
                                        self.selectedQ7 = q7opt
                                    }) {
                                        Text(self.q7Options[q7opt])
                                            .padding()
                                            .frame(width:350, height: .infinity,  alignment: .leading)
                                            .foregroundColor(darkText)
                                            .background(self.selectedQ7 == q7opt ? Color("buttonselectGreen") : Color.white)
                                            .clipShape(Capsule())
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

struct QuestionSeven_Previews: PreviewProvider {
    static var previews: some View {
        QuestionSeven(selectedQ7: 0)
    }
}
