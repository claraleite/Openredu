//
//  MembersProfileView.swift
//  Openredu
//
//  Created by mccl on 24/04/23.
//

import SwiftUI

struct MembersProfileView: View {
    
    var image: String
    var name: String
    
    var body: some View {
        
        VStack(spacing: 6) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64, height: 64)
            
            Text(name)
                .font(.system(size: 14, weight: .regular, design: .default))
                .multilineTextAlignment(.center)
                .frame(width: 80, height: 36)
            
        }
        .frame(width: 105, height: 107)
        
    }
}

struct MembersProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MembersProfileView(image: "alessandra-pereira", name: "Alessandra Pereira")
    }
}
