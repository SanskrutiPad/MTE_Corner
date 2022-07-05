//
//  Question7Redo.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI

struct Question7Redo: View {
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 07")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("Cold temperatures pose a potential occurrence for frostbite and hypothermia. To avoid this hazard, it is best to: **Choose all that apply**")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                SolutionRow(solution: Solution(text: "A. Wear appropriate (layered) clothing.", isRightAnswer: true))
                SolutionRow(solution: Solution(text: "B. Work as quickly as possible to get out of the cold.", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "C. Maintain a strong and healthy diet.", isRightAnswer: true))
                SolutionRow(solution: Solution(text: "D. Wear summer outfits.", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "E. Pace yourself while working outdoors.", isRightAnswer: true))
            }
            
            .padding(.bottom, 30)
        }
    }
}

struct Question7Redo_Previews: PreviewProvider {
    static var previews: some View {
        Question7Redo()
    }
}
