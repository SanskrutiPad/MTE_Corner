//
//  SolutionRow.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-04.
//

import SwiftUI

struct SolutionRow: View {
    var solution: Solution
    @State private var selected = false
    
    var body: some View {
        VStack {
           
                Text(solution.text)
                    .padding()
                    .frame(width: 350, height: .infinity,  alignment: .leading)
                    .foregroundColor(darkText)
                    .background(selected ? (solution.isRightAnswer ? Color("buttonselectGreen") : Color("buttonselectRed")) : Color(.white))
                    .clipShape(Capsule())
//                    .shadow(color: selected ? (solution.isRightAnswer ? Color("buttonselectGreen") : Color("buttonselectRed")) : .gray, radius: 2, x: 0, y: 2)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    .padding(.leading)
                    .padding(.trailing)
                    .onTapGesture {
                        selected = true
                    }
        }
        
    }
    
    
}

struct SolutionRow_Previews: PreviewProvider {
    static var previews: some View {
        SolutionRow(solution: Solution(text: "Possible Answer", isRightAnswer: false))
    }
}
