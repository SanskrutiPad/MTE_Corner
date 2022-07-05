//
//  TailboardMenuView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-29.
//

import SwiftUI

struct TailboardMenuView: View {
    @State var selectionWSBCForm: Int? = nil
    
    
    var body: some View {
        ZStack {
            Color("YVR Light Blue").edgesIgnoringSafeArea(.all)
            NavigationView {
                    
                Form {
                        NavigationLink(destination: TailboardView(), tag: 1, selection: $selectionWSBCForm) {
                                    Button {
                                        print("Tailboard 1 tapped")
                                        self.selectionWSBCForm = 1
                                    } label: {
                                        VStack {
                                            Text("Tailboard 1")
                                                .padding()
                                                .frame(alignment: .leading)
                                                .font(Font.headline.weight(.medium))
                                                }
                                            }
                        }
                        
                        
                    
                    NavigationLink(destination: TailboardView(), tag: 1, selection: $selectionWSBCForm) {
                                Button {
                                    print("Tailboard 1 tapped")
                                    self.selectionWSBCForm = 1
                                } label: {
                                    VStack {
                                        Text("Tailboard 2")
                                            .padding()
                                            .frame(alignment: .leading)
                                            .font(Font.headline.weight(.medium))
                                            }
                                        }
                    }
                    
                    
                    NavigationLink(destination: TailboardView(), tag: 1, selection: $selectionWSBCForm) {
                                Button {
                                    print("Tailboard 1 tapped")
                                    self.selectionWSBCForm = 1
                                } label: {
                                    VStack {
                                        Text("Tailboard 3")
                                            .padding()
                                            .frame(alignment: .leading)
                                            .font(Font.headline.weight(.medium))
                                            }
                                        }
                    }
                }
                
                .navigationTitle("Tailboard Forms")
                .foregroundColor(darkText)
                .font(.system(size: 14))
                
            }
            
        }
    }
}

struct TailboardMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TailboardMenuView()
    }
}
