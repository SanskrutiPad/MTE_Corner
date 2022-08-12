//
//  LoginDataManager.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-08-10.
// This file reads useer data from Firestore Databasee and fetches user data



import SwiftUI
import Firebase

class LoginDataManager: ObservableObject { // **The ObservableObject conformance allows instances of this class to be used inside views, so that when important changes happen the view will reload.
    @Published var users: [User] = [] // If @Published is changed, all views using that object will be reloaded to reflect those changes.
    
    init() {
        fetchUsers()
    }
    
    
    func fetchUsers() {
        users.removeAll() // make sure array is empty
        let db = Firestore.firestore() // db = database
        let reference = db.collection("users")
        reference.getDocuments { snapshot, error in   // snapshot of database
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot { // if snapshot isn't nil
//                this is the decoding part
                for document in snapshot.documents {
                    let data = document.data()
                    let id = data["id"] as? String ?? ""
                    let firstName = data["firstName"] as? String ?? ""
                    let lastName = data["lastName"] as? String ?? ""
                    let email = data["email"] as? String ?? ""
                    let role = data["role"] as? Int ?? 1
                    
                    let user = User(id: id, firstName: firstName, lastName: lastName, email: email, role: role)
                    self.users.append(user)
                }
            }
        }
    }
}
