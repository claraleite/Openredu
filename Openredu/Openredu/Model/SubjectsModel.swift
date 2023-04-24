//
//  DisciplinesModel.swift
//  Openredu
//
//  Created by mccl on 07/04/23.
//

import SwiftUI

struct SubjectsModel: Identifiable {
    let id = UUID()
    var name: String
    var numberOfModules: Int
    var numberOfClasses: Int
    var goal: String
    var tags: [String]
    var teachers: [MembersModel]
    var tutors: [MembersModel]
    var students: [MembersModel]
    var content: [ContentModel]
    
}
