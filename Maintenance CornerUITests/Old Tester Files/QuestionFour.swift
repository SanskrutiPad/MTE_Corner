//
//  QuestionFour.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-21.
//

import SwiftUI

struct QuestionFour: View {
    @State public var selectedQ4: Int?
    let q4Options = ["A. Wearing a mask  ", "B. Closing the windows  ", "C. Ensuring the fresh air is always circulating"]
    
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 04")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("Carbon Monoxide can buildup in enclosed spaces. Carbon monoxide poisoning should be avoided by: ")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                VStack {
                    ForEach(0..<q4Options.count) { q4opt in
                                    Button(action: {
                                        self.selectedQ4 = q4opt
                                    }) {
                                        Text(self.q4Options[q4opt])
                                            .padding()
                                            .frame(width:350, height: .infinity,  alignment: .leading)
                                            .foregroundColor(darkText)
                                            .background(self.selectedQ4 == q4opt ? Color("buttonselectGreen") : Color.white)
                                            .clipShape(Capsule())                                    }
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

struct QuestionFour_Previews: PreviewProvider {
    static var previews: some View {
        QuestionFour(selectedQ4: 0)
    }
}
