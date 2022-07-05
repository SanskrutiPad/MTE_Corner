//
//  Task.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-13.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isCompleted: Bool
    
}
