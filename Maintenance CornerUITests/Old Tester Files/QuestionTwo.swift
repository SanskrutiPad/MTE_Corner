//
//  QuestionTwo.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-21.
//

import SwiftUI

struct QuestionTwo: View {
    @State public var selectedQ2: Int?
    let q2Options = ["A. Flip flops ", "B. Runners/Trainers ", "C. Boots with good tread"]
    
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 02")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("It is also a good idea to wear  ______  while working in the winter season. ")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                VStack {
                    ForEach(0..<q2Options.count) { q2opt in
                                    Button(action: {
                                        self.selectedQ2 = q2opt
                                    }) {
                                        Text(self.q2Options[q2opt])
                                            .padding()
                                            .frame(width:350, height: .infinity,  alignment: .leading)
                                            .foregroundColor(darkText)
                                            .background(self.selectedQ2 == q2opt ? Color("buttonselectGreen") : Color.white)
                                            .clipShape(Capsule())
//                                            .frame(minWidth: 100, maxHeight: 50, minHeight: .infinity, alignment: .leading)
//                                            .frame(width:300, height: 50,  alignment: .leading)
                                    }
                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                    .padding(.leading)
                                    .padding(.trailing)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                }
                }
                
                .padding(.bottom, 30)
            }
        }
    }
}

struct QuestionTwo_Previews: PreviewProvider {
    static var previews: some View {
        QuestionTwo(selectedQ2: 0)
    }
}
