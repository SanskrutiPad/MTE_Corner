//
//  LoginListView.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-08-10.
//
// This file IS A TESTER that saves user info into Firebase Firestore (makes sure that user info is being read from database)
// Displays Users

import SwiftUI

struct LoginListView: View {
    @EnvironmentObject var loginDataManager : LoginDataManager // For data that should be shared with many views in your app, SwiftUI gives us the @EnvironmentObject property wrapper. This lets us share model data anywhere it’s needed, while also ensuring that our views automatically stay updated when that data changes.
    var body: some View {
        NavigationView {
            List(loginDataManager.users, id: \.id) { usr in
                Text(usr.firstName)
            }
        }
    }
}

struct LoginListView_Previews: PreviewProvider {
    static var previews: some View {
        LoginListView()
    }
}
