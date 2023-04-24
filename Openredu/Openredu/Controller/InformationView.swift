//
//  InformationView.swift
//  Openredu
//
//  Created by mccl on 24/04/23.
//

import SwiftUI

struct InformationView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var title: String
    var description: String
    var teachers: [MembersModel]
    var tutors: [MembersModel]
    var students: [MembersModel]
    
    let columns = [
        GridItem(.adaptive(minimum: 105))
    ]
    
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 24) {
                
                HStack {
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 20))
                            .foregroundColor(.accentColor)
                    }
                                        
                    Spacer()
                    
                    Text(title)
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                }
                
                Divider()
                
                Text(description)
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                
                Text("Membros")
                    .font(.system(size: 20, weight: .bold, design: .default))
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("Professores")
                        .font(.system(size: 14, weight: .bold, design: .default))
                    
                    ForEach(teachers) { teacher in
                        MembersProfileView(image: teacher.image, name: teacher.name)
                    }
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    
                    Text("Tutores")
                        .font(.system(size: 14, weight: .bold, design: .default))
                    
                    ForEach(tutors) { tutor in
                        MembersProfileView(image: tutor.image, name: tutor.name)
                    }
                }
                
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("Alunos")
                        .font(.system(size: 14, weight: .bold, design: .default))
                    
                    LazyVGrid(columns: columns, spacing: 40) {
                        ForEach(students) { student in
                            MembersProfileView(image: student.image, name: student.name)
                        }
                    }
                    
                    
                }
                
                
                
            }
            .padding()
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView(
            title: "Informações do ambiente",
            description: "A comunidade Openredu.org articula Designer, Programadores, Educadores e Empreendedores em torno de desenvolvimento e da difusão da rede dosical educacional Openredu.",
            teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
            tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
            students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                       MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                       MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                       MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                       MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                       MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")])
    }
}
