//
//  SideMenuHeaderView.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-10.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            
            Button (action:{
                withAnimation(.spring()) {
                    isMenuShowing.toggle()
                }
            })  {
                
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32 )
                    .foregroundColor(.white)
                    .padding()
                    
            }
               
               
                    
            


            
            VStack (alignment: .leading) {
                Image("profilepic")
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.yellow))
                    .frame(width: 60, height: 60, alignment: .trailing)
                    .padding(.bottom, 1)
                    .padding(.top, 20)
                
                Text("Sanskruti Padmawar")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.white)
                    
                
                Text("padmawars_coop@yvr.ca")
                    .font(.system(size: 14, weight: .medium))
                    .padding(.bottom, 32)
                    .foregroundColor(.white)
                    
                
                
                HStack {
                    HStack {
                        
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
        }
        
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isMenuShowing: .constant(true))
    }
}
