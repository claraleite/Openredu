//
//  EnvironmentTypeModel.swift
//  Openredu
//
//  Created by mccl on 03/04/23.
//

import SwiftUI

struct EnvironmentTypeModel: Identifiable {
    let id = UUID()
    var title: String
    var description: String
    var courses: [EnvironmentCoursesModel]
}


