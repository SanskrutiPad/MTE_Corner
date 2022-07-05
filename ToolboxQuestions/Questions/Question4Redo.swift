//
//  Question4Redo.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI

struct Question4Redo: View {
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
                
                SolutionRow(solution: Solution(text: "A. Wearing a mask  ", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "B. Closing the windows  ", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "C. Ensuring the fresh air is always circulating", isRightAnswer: true))
            }
            
            .padding(.bottom, 30)
        }
    }
}

struct Question4Redo_Previews: PreviewProvider {
    static var previews: some View {
        Question4Redo()
    }
}
