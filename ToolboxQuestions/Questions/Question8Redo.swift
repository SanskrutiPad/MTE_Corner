//
//  Question8Redo.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI

struct Question8Redo: View {
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 08")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("Winter storms have the potential to sideline and trap you in your vehicle. It is ideal to prepare for this situation by:")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                SolutionRow(solution: Solution(text: "A. Packing blankets, food, and a flashlight into your vehicle", isRightAnswer: true))
                SolutionRow(solution: Solution(text: "B. Doing nothing, as there is a low chance of this event occurring", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "C. Packing a shovel so that you can free your vehicle in the storm", isRightAnswer: false))
            }
            
            .padding(.bottom, 30)
        }
    }
}

struct Question8Redo_Previews: PreviewProvider {
    static var previews: some View {
        Question8Redo()
    }
}
