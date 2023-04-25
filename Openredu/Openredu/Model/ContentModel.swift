//
//  ContentModel.swift
//  Openredu
//
//  Created by mccl on 07/04/23.
//

import SwiftUI

struct ContentModel: Identifiable {
    let id = UUID()
    var name: String
    var numberOfClasses: Int
    var progress: Float
}
