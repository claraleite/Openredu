//
//  DisciplinesModel.swift
//  Openredu
//
//  Created by mccl on 07/04/23.
//

import SwiftUI

struct SubjectsModel {
    let id = UUID()
    var name: String
    var goal: String
    var tags: [String]
    var content: [ContentModel]
}
