//
//  Question5Redo.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI

struct Question5Redo: View {
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 05")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("To avoid a fire hazard, heat sources should be kept away from:")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                SolutionRow(solution: Solution(text: "A. Yourself.", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "B. Office furniture.", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "C. Combustible materials.", isRightAnswer: true))
            }
            
            .padding(.bottom, 30)
        }
    }
}

struct Question5Redo_Previews: PreviewProvider {
    static var previews: some View {
        Question5Redo()
    }
}
