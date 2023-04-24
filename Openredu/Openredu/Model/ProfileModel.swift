//
//  ProfileModel.swift
//  Openredu
//
//  Created by mccl on 24/04/23.
//

import SwiftUI

struct ProfileModel: Identifiable {
    let id = UUID()
    var name: String
    var image: String
    var email: String
    var birth: String
    var mural: [MuralPostModel]
    var contacts: [MembersModel]
    
    
}
