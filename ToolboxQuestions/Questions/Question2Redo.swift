//
//  Question2Redo.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI

struct Question2Redo: View {
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
                
                SolutionRow(solution: Solution(text: "A. Flip flops ", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "B. Runners/Trainers ", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "C. Boots with good tread", isRightAnswer: true))
            }
            
            .padding(.bottom, 30)
        }
    }
}

struct Question2Redo_Previews: PreviewProvider {
    static var previews: some View {
        Question2Redo()
    }
}
