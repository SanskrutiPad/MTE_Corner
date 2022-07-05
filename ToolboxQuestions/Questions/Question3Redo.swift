//
//  Question3Redo.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-05.
//

import SwiftUI

struct Question3Redo: View {
    var body: some View {
        ZStack {
            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Topic 03")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                Text("Snowfall can conceal objects that pose a tripping hazard. This hazard can be avoided by:")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                SolutionRow(solution: Solution(text: "A. Keeping the jobsite clean and storing equipment away properly. ", isRightAnswer: true))
                SolutionRow(solution: Solution(text: "B. Marking objects left out on the jobsite with red marker flags. ", isRightAnswer: false))
                SolutionRow(solution: Solution(text: "C. Poking at the snow until objects are found. ", isRightAnswer: false))
            }
            
            .padding(.bottom, 30)
        }
    }
}

struct Question3Redo_Previews: PreviewProvider {
    static var previews: some View {
        Question3Redo()
    }
}
