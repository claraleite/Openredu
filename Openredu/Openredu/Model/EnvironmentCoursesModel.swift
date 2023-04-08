//
//  EnvironmentCoursesModel.swift
//  Openredu
//
//  Created by mccl on 06/04/23.
//

import SwiftUI

struct EnvironmentCoursesModel: Identifiable {
    let id = UUID()
    var name: String
    var numberOfSubjects: Int
    var hours: Int
    var description: String
    var responsable: [String]
    var subjects: [SubjectsModel]
}

