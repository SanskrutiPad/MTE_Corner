//
//  Question1Redo.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI

struct Question1Redo: View {
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
                
                SolutionRow(solution: Solution(text: "A. Pouring hot water over the affected area.", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "B. Pouring sand/salt over the affected area.", isRightAnswer: true))
                SolutionRow(solution: Solution(text: "C. Using a blow-dryer on the affected area.", isRightAnswer: false))
            }
            
            .padding(.bottom, 30)
        }
    }
}

struct Question1Redo_Previews: PreviewProvider {
    static var previews: some View {
        Question1Redo()
    }
}
