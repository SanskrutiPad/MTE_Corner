//
//  Toolbox.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-13.
//

import Foundation


struct Toolbox: Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {

        var id: UUID {          //        use if no id used from API
            UUID()
        }
        var category: String
        var type: String
        var question: String
        var rightSolution: String
        var wrongSolution: String
        
        var formattedQuestion: AttributedString {                   // custom coding key
            do {
                return try AttributedString(markdown: question)
            } catch {
                print("ERROR: setting formattedQuestion \(error)")
                return ""
            }
        }
        
        var answers: [Solution] {
            do {
                let correct = [Solution(text: try AttributedString(markdown: rightSolution), isRightAnswer: true)]
//                let incorrects = try wrongSolution.map { answer in
//                    Solution(text: try AttributedString(markdown: answer), isRightAnswer: false)
//                }
                let incorrects = [Solution(text: try AttributedString(markdown: wrongSolution), isRightAnswer: false)]
                let totalSolns = correct + incorrects
                return totalSolns.shuffled()
            
            } catch {
                print("ERROR: setting answers: \(error)")
                return []
            }
        }
    }
}
