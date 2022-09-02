//
//  readAndWrite.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-08-31.
// this file is able to read and write to the database with this sample view

import SwiftUI

struct readAndWrite: View {
    @EnvironmentObject var loginDataManager: LoginDataManager
    
    
    var body: some View {
        NavigationView {
            List(loginDataManager.users, id: \.id) { user in
                Text(user.firstName)
            }
            .navigationTitle("Read + Write Test")
            .navigationBarItems(trailing: Button(action: {
                
            }, label: {
                Image(systemName: "plus")
            }))
        }
    }
}

struct readAndWrite_Previews: PreviewProvider {
    static var previews: some View {
        readAndWrite()
    }
}
