//
//  QuestionOne.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-21.
//

import SwiftUI

struct QuestionOne: View {
    @State public var selectedQ1: Int?
//    var solution: Solution
    let q1Options = ["A. Pouring hot water over the affected area.", "B. Pouring sand/salt over the affected area.", "C. Using a blow-dryer on the affected area."]
    
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 01")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("Winter weather can cause surfaces to ice over and become a slipping hazard. Icy surfaces can be mitigated by:")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                VStack {
//                    self.selectedQ1 = nil
                    ForEach(0..<q1Options.count) { q1opt in
                        
                                    Button(action: {
                                        self.selectedQ1 = q1opt
                                    }) {
                                        Text(self.q1Options[q1opt])
                                            .padding()
                                            .frame(width:350, height: .infinity,  alignment: .leading)
                                            .foregroundColor(darkText)
                                            .background(Color(.white))
//                                            .background(self.selectedQ1 == q1opt ? Color("buttonselectGreen") : Color.white)
//                                            .background(self.selectedQ1 == q1opt ? (solution.rightAnswer ? Color("buttonselectGreen") : Color.red) : Color.white)
                                            .clipShape(Capsule())
                                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                            .padding(.leading)
                                            .padding(.trailing)
                                    }
                        
                                    
                        
//                        SolutionRow(solution: Solution(text: "A. Pouring hot water over the affected area.", rightAnswer: false))
//                        SolutionRow(solution: Solution(text: "B. Pouring sand/salt over the affected area.", rightAnswer: true))
//                        SolutionRow(solution: Solution(text: "C. Using a blow-dryer on the affected area.", rightAnswer: false))
                                }
//                    SolutionRow(solution: <#T##Solution#>, selected: <#T##arg#>)
                }
//                Button(action: {
//                               self.selectedQ1 = nil
//                           }) {
//                               Text("Clear Selection")
//                           }
                .padding(.bottom, 30)
                
            }
        }
    }
}

struct QuestionOne_Previews: PreviewProvider {
    static var previews: some View {
        QuestionOne(selectedQ1: 0)
    }
}
