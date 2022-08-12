//
//  SideMenuHeaderView.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-10.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isMenuShowing: Bool
    @State private var profileImg: [Image] = [Image("Aimg"), Image("Bimg"), Image("Cimg"), Image("Dimg"), Image("Eimg"), Image("Fimg"), Image("Gimg"), Image("Himg"), Image("Iimg"), Image("Jimg"), Image("Kimg"), Image("Limg"), Image("Mimg"), Image("Nimg"), Image("Oimg"), Image("Pimg"), Image("Qimg"), Image("Rimg"), Image("Simg"), Image("Timg"), Image("Uimg"), Image("Vimg"), Image("Wimg"), Image("Ximg"), Image("Yimg"), Image("Zimg")]
    
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
                    .padding(.trailing, 4)
                
                Text("Sanskruti Padmawar")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.white)
                    
                
                Text("padmawars_coop@yvr.ca")
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .medium))
                    .padding(.bottom, 32)
                    
                    
                
                
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



