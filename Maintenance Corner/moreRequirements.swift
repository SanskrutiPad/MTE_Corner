//
//  moreRequirements.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-06-13.
//

import Foundation

// Another struct for Tailboard assessments (includes yes, no, attached checkboxes)
struct moreReqs: Hashable {
    let id = UUID()
    let name1: String
    var isCompleted1: Bool
}
