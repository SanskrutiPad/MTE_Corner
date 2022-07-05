//
//  QuestionEight.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-21.
//

import SwiftUI

struct QuestionEight: View {
    @State public var selectedQ8: Int?
    let q8Options = ["A. Wearing a mask  ", "B. Closing the windows  ", "C. Ensuring the fresh air is always circulating"]
    
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 08")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("Winter storms have the potential to sideline and trap you in your vehicle. It is ideal to prepare for this situation by: ")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                VStack {
                    ForEach(0..<q8Options.count) { q8opt in
                                    Button(action: {
                                        self.selectedQ8 = q8opt
                                    }) {
                                        Text(self.q8Options[q8opt])
                                            .padding()
                                            .frame(width:350, height: .infinity,  alignment: .leading)
                                            .foregroundColor(darkText)
                                            .background(self.selectedQ8 == q8opt ? Color("buttonselectGreen") : Color.white)
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

struct QuestionEight_Previews: PreviewProvider {
    static var previews: some View {
        QuestionEight()
    }
}
