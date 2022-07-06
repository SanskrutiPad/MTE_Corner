//
//  QuizSamp.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-15.
//

//
//  QuizSamp.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-04.
//









//STRATEGY:
// Make a new 'buttons' collection and run a for loop inside struct Block for those buttons to make each one selectabke only once per block!








import SwiftUI



struct QuizSamp: View {
    @State private var selected = false
    
    
    var body: some View {
        ZStack {
            Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack {
                    HStack(spacing: 35) {
                            
                        Text("Safety Quiz")
                            .font(.system(size: 22))
                            .frame(maxWidth: .infinity, alignment: .center)
                      
                        
                    }
                    .padding()
                    HStack {
                        Text("YVR Winter Safety Hazards & Techniques")
                            .font(.system(size: 20))
                            .font(Font.subheadline.weight(.medium))
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                    }
                    Image("quizImg")
                        .renderingMode(.original)
                        .padding(.bottom, 40)
                    
                    
                    blockList(selected: $selected)
                    SubmitButton()
                   
                    Spacer()
                    
                }
            
            }
            
            
        }
        
    }
}


struct SubmitButton: View {
    var body: some View {
        Button (action:{
            print("button pressed")
        })  {
            HStack {
                Text("Submit")
            }
            .padding(20)
            .background(Color.white)
            .foregroundColor(Color("YVR Dark Blue"))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 2, x: 0, y: 2)
            .onTapGesture {
                
            }
            
        }
    }
}


// Creates Block List
struct blockList : View {
    @Binding var selected: Bool
    var body: some View {
        VStack (spacing : 0) {
            ForEach(data) {i in
                Block(selected: $selected, width: UIScreen.main.bounds.width, data: i)
                
            }
            
            
        }
    }
}




struct Block : View {
    @Binding var selected: Bool
    var width : CGFloat
    var data: Quiz
    
    var body: some View {
        VStack {
            VStack {
                Text(self.data.topic)
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top)
                    .padding(.bottom,5)
                    
                
                Text(self.data.question)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer(minLength: 0)
                Spacer()
                
                
          
                
                
                
                Group {
                        Button (action:{
                            print("button pressed")
                        })  {
                            HStack {
                                Group {
                                    if self.selected {
                                        ZStack {
                                            Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                                            Circle().fill(Color.black.opacity(0.5)).frame(width: 8, height: 8)
                                        }.onTapGesture {self.selected = true}
        
                                    } else {
                                        Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                                            .onTapGesture {self.selected = false}
                                    }
                            }
                                Spacer()
                                Text(self.data.optionA)
                                    .bold()
                                    .frame( minWidth: 100, maxWidth: .infinity, minHeight: 44, alignment: .leading)
                            }
                            .padding()
                            .background(Color.white)
                            .foregroundColor(Color("YVR Dark Blue"))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                            .onTapGesture {
                                    selected = false
                            }
                        }
        
        
        
                        Button (action:{
                            print("button pressed")
                        })  {
                            HStack {
                                Group {
                                    if self.selected {
                                        ZStack {
                                            Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                                            Circle().fill(Color.black.opacity(0.5)).frame(width: 8, height: 8)
                                        }.onTapGesture {self.selected = true}
        
                                    } else {
                                        Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                                            .onTapGesture {self.selected = false}
                                    }
                            }
                                Spacer()
                                Text(self.data.optionB)
                                    .bold()
                                    .frame( minWidth: 100, maxWidth: .infinity, minHeight: 44, alignment: .leading)
                            }
                            .padding()
                            .background(Color.white)
                            .foregroundColor(Color("YVR Dark Blue"))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                            .onTapGesture {
                                    selected = true
                            }
        
                        }
        
                        Button (action:{
                            print("button pressed")
                        })  {
                            HStack {
                                Group {
                                    if self.selected {
                                        ZStack {
                                            Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                                            Circle().fill(Color.black.opacity(0.5)).frame(width: 8, height: 8)
                                        }.onTapGesture {self.selected = true}
        
                                    } else {
                                        Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                                            .onTapGesture {self.selected = false}
                                    }
                            }
                                Spacer()
                                Text(self.data.optionC)
                                    .bold()
                                    .frame( minWidth: 100, maxWidth: .infinity, minHeight: 44, alignment: .leading)
                            }
                            .padding()
                            .background(Color.white)
                            .foregroundColor(Color("YVR Dark Blue"))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        }
                    
                    if (self.data.optionD == "") {
                        
                    }
                }
                
                
                Spacer(minLength: 0)
              

                    .background(Color("YVR Light Blue"))
                    .clipShape(Capsule())
                    .padding(.top, 20)
                
                
            }
            

            
            .padding(.horizontal, 25)
            .background(lightGreyCol)
        }
        
       
//        .frame(width: self.width)
        .padding(.bottom, 50)
        Spacer(minLength: 0)
    }
}


struct Quiz : Identifiable {
    var id : Int
    var topic: String
    var question: String
    var optionA: String
    var optionB: String
    var optionC: String
    var optionD: String
//    var optionE: String
}

let buttons = ["A", "B", "C"]

// Collection
var data = [ Quiz(id: 1, topic: "Topic 01", question: "Winter weather can cause surfaces to ice over and become a slipping hazard. Icy surfaces can be mitigated by:", optionA: "A. Pouring hot water over the affected area. ", optionB: "B. Pouring sand/salt over the affected area. ", optionC: "C. Using a blow-dryer on the affected area.  ", optionD: ""),
             Quiz(id: 2, topic: "Topic 02", question: "It is also a good idea to wear: ______ while working in the winter season. ", optionA: "A: Flip flops", optionB: "B. Runners/Trainers  ", optionC: "C. Boots with good tread  ", optionD: ""),
            
             Quiz(id: 3, topic: "Topic 03", question: "Snowfall can conceal objects that pose a tripping hazard. This hazard can be avoided by:", optionA: "A: Keeping the jobsite clean and storing equipment away properly. ", optionB: "B. Marking objects left out on the jobsite with red marker flags. ", optionC: "C. Poking at the snow until objects are found. ", optionD: ""),
             
             Quiz(id: 4, topic: "Topic 04", question: "Carbon Monoxide can buildup in enclosed spaces. Carbon monoxide poisoning should be avoided by:", optionA: "A: Wearing a mask ", optionB: "B. Closing the windows ", optionC: "C. Ensuring the fresh air is always circulating  ", optionD: ""),
             
             Quiz(id: 5, topic: "Topic 05", question: "To avoid a fire hazard, heat sources should be kept away from:", optionA: "A: Yourself.", optionB: "B. Office furniture. ", optionC: "C. Combustible materials.   ", optionD: ""),
             
             Quiz(id: 6, topic: "Topic 06", question: "The winter season makes driving more precarious. To avoid an accident, it is best to: ", optionA: "A: Equip the vehicle with appropriate tires.", optionB: "B. Depart earlier for work to allow more time for safe driving.", optionC: "C. Drive with any tires. ", optionD: ""),
             
             Quiz(id: 7, topic: "Topic 07", question: "Cold temperatures pose a potential occurrence for frostbite and hypothermia. To avoid this hazard, it is best to:", optionA: "A: Wear appropriate (layered) clothing.", optionB: "B. Work as quickly as possible to get out of the cold. ", optionC: "C. Maintain a strong and healthy diet.  ", optionD: ""),
             
             Quiz(id: 8, topic: "Topic 08", question: "Winter storms have the potential to sideline and trap you in your vehicle. It is ideal to prepare for this situation by:", optionA: "A: Packing blankets, food, and a flashlight into your vehicle.", optionB: "B. Doing nothing, as there is a low chance of this event occurring ", optionC: "C. Packing a shovel so that you can free your vehicle in the storm ", optionD: "")
]






internal struct QuizSamp_Previews: PreviewProvider {
    static var previews: some View {
        QuizSamp()
    }
}




