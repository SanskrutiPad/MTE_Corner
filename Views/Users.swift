//
//  Users.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-08-10.
// User datatype 

import Foundation


struct User: Identifiable {
    var id: String
    var firstName: String
    var lastName: String
    var email: String
    var role: Int
}
