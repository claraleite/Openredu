//
//  EnvironmentView.swift
//  Openredu
//
//  Created by mccl on 03/04/23.
//

import SwiftUI

struct EnvironmentView: View {
    
    private var values: [EnvironmentTypeModel] = [
        EnvironmentTypeModel(title: "Comunidade Openredu", description: "A comunidade Openredu.org articula Designer, Programadores, Educadores e Empreendedores em torno de desenvolvimento e da difusão da rede dosical educacional Openredu."), EnvironmentTypeModel(title: "Universidade Federal de Pernambuco", description: "A maior universidade de Pernambuco.")
    ]
    
    var body: some View {
        GeometryReader { geometry in
            
            NavigationStack {
                
                ZStack(alignment: .top) {
                    
                    VStack {
                        ForEach(values) { item in
                            EnvironmentListModel(title: item.title, width: geometry.size.width * 0.85, height: geometry.size.height * 0.12)
                        }
                    }
                    .navigationTitle("Ambientes")
                }
            }
        }
        
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
