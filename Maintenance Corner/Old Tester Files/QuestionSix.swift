////
////  QuestionSix.swift
////  MTE Corner
////
////  Created by Sanskruti  Padmawar  on 2022-06-21.
////
//
//import SwiftUI
//
//struct QuestionSix: View {
//    @State public var selectedQ6: Int?
//    let q6Options = ["A. Equip the vehicle with appropriate tires.   ", "B. Depart earlier for work to allow more time for safe driving.  ", "C. Drive with any tires. ", "D. Depart for work at the usual time. ", "E. Perform routine vehicle checkups. "]
//    
//    var body: some View {
//        ZStack {
//            Color("lightGreyUni").edgesIgnoringSafeArea(.all)
//            VStack {
//                Text("Topic 06")
//                    .font(.system(size: 15))
//                    .foregroundColor(.gray)
//                    .padding(.top)
//                Text("The winter season makes driving more precarious. To avoid an accident, it is best to:  [Choose all that apply]")
//                    .font(.headline)
//                    .fontWeight(.bold)
//                    .padding(.top)
//                    .padding(.leading)
//                    .padding(.trailing)
//                    .padding(.bottom)
//                VStack {
//                    ForEach(0..<q6Options.count) { q6opt in
//                                    Button(action: {
//                                        self.selectedQ6 = q6opt
//                                    }) {
//                                        Text(self.q6Options[q6opt])
//                                            .padding()
//                                            .frame(width:350, height: .infinity,  alignment: .leading)
//                                            .foregroundColor(darkText)
//                                            .background(self.selectedQ6 == q6opt ? Color("buttonselectGreen") : Color.white)
//                                            .clipShape(Capsule())
//                                    }
//                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
//                                    .padding(.leading)
//                                    .padding(.trailing)
//                                }
//                }
//                
//                .padding(.bottom, 30)
//            }
//        }
//    }
//}
//
//struct QuestionSix_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestionSix(selectedQ6: 0)
//    }
//}
