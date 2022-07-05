//
//  Question6Redo.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI

struct Question6Redo: View {
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 06")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("The winter season makes driving more precarious. To avoid an accident, it is best to: **Choose all that apply**")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                SolutionRow(solution: Solution(text: "A. Equip the vehicle with appropriate tires.", isRightAnswer: true))
                SolutionRow(solution: Solution(text: "B. Depart earlier for work to allow more time for safe driving.", isRightAnswer: true))
                SolutionRow(solution: Solution(text: "C. Drive with any tires.", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "D. Depart for work at the usual time.", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "E. Perform routine vehicle checkups.", isRightAnswer: true))
            }
            
            .padding(.bottom, 30)
        }
    }
}

struct Question6Redo_Previews: PreviewProvider {
    static var previews: some View {
        Question6Redo()
    }
}
