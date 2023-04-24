//
//  ProfilePlaceholders.swift
//  Openredu
//
//  Created by mccl on 24/04/23.
//

import Foundation

extension ProfileModel {
    
    static func logProfile() -> ProfileModel {
        return
            ProfileModel(name: "Maria Clara Cavalcanti Leite", image: "maria-clara", email: "claracleite@hotmail.com", birth: "02/12/2001", mural: [
                MuralPostModel(name: "Eduardo Moura", image: "eduardo-moura", time: "1 semana", content: "Hoje teremos uma palestra 100% remota sobre o assunto. Link para o meet no Fórum."),
                MuralPostModel(name: "Luiza Oliveira", image: "luiza-oliveira", time: "2 semanas", content: "Ótimo conteúdo disponibilizado! Gostei bastante! Ansiosa para os próximos.")
            ],
                         contacts: [
                            MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                            MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                            MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                            MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")
                         ])
            
        
    }
}
