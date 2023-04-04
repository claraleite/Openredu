//
//  EnvironmentListModel.swift
//  Openredu
//
//  Created by mccl on 03/04/23.
//

import SwiftUI

struct EnvironmentListModel: View {
    
    @State var title: String
    
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color("Azulado-2"))
                .frame(width: width, height: height)
            
            HStack {
                Text(title)
                    .foregroundColor(Color.white)
                    .font(Font.title)
                    .multilineTextAlignment(.leading)
                
                Image(systemName: "chevron.forward")
                
            }.padding()
        }
    }
}

struct EnvironmentListModel_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentListModel(title: "Universidade Federal de Pernambuco", width: 360, height: 100)
    }
}
