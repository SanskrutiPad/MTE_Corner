//
//  MyProfile.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-04-27.
//

import SwiftUI

struct MyProfile: View {
    var body: some View {
        VStack {
            // App 'Header'
            HStack {
                
                Image("YVRLogo_VAA_BlueText_CMYK").resizable().aspectRatio(contentMode:.fit)
                    .frame(width: 140, height: 60, alignment: .leading)
                Text("Maintenance Corner")
                    .padding()
                    .foregroundColor(Color("YVR Dark Blue"))
                    .font(Font.headline.weight(.heavy))
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            Divider().background(Color.black)
            Spacer()
        }
    }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
