//
//  MuralPostModel.swift
//  Openredu
//
//  Created by mccl on 24/04/23.
//

import SwiftUI

struct MuralPostModel: Identifiable {
    let id = UUID()
    var name: String
    var image: String
    var time: String
    var content: String
}
