//
//  QuestionFive.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-21.
//

import SwiftUI

struct QuestionFive: View {
    @State public var selectedQ5: Int?
    let q5Options = ["A. Yourself.   ", "B. Office furniture.   ", "C. Combustible materials. "]
    
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 05")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("To avoid a fire hazard, heat sources should be kept away from: ")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                VStack {
                    ForEach(0..<q5Options.count) { q5opt in
                                    Button(action: {
                                        self.selectedQ5 = q5opt
                                    }) {
                                        Text(self.q5Options[q5opt])
                                            .padding()
                                            .frame(width:350, height: .infinity,  alignment: .leading)
                                            .foregroundColor(darkText)
                                            .background(self.selectedQ5 == q5opt ? Color("buttonselectGreen") : Color.white)
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

struct QuestionFive_Previews: PreviewProvider {
    static var previews: some View {
        QuestionFive()
    }
}
