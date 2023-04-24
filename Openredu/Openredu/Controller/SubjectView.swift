//
//  SubjectView.swift
//  Openredu
//
//  Created by mccl on 08/04/23.
//

import SwiftUI

struct SubjectView: View {
    
    @State private var showingSheet = false

    @State var selected = 1
    
    var subjectInfo: SubjectsModel
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                VStack(alignment: .leading, spacing: geometry.size.height * 0.03) {
                    
                    HStack {

                        Button {
                            showingSheet.toggle()
                        } label: {
                            Image(systemName: "info.circle")
                                .font(.system(size: 20))
                                .foregroundColor(.accentColor)

                        }

                    }
                    
                    Picker(selection: $selected, label: Text("Picker"), content: {
                        Text("Conteúdo").tag(1)
                        Text("Mural").tag(2)
                        
                    })
                    .pickerStyle(.segmented)
                    
                    if selected == 1 {
                        VStack(alignment: .leading, spacing: geometry.size.height * 0.03) {
                            
                            VStack(alignment: .leading, spacing: geometry.size.height * 0.01) {
                                Text("Objetivo:")
                                    .font(.system(size: 16, weight: .bold, design: .default))
                                
                                Text(subjectInfo.goal)
                            }
                            
                            VStack(alignment: .leading, spacing: geometry.size.height * 0.01) {
                                Text("Tags")
                                    .font(.system(size: 16, weight: .bold, design: .default))
                                
                                HStack {
                                    Image(systemName: "tag.fill")
                                        .font(.system(size: 14))
                                    
                                    ForEach(subjectInfo.tags, id: \.self) { item in
                                        Text(item)
                                            .font(.system(size: 16, weight: .regular, design: .default))
                                    }
                                }
                            }
                            
                            Text("Conteúdo")
                                .font(.system(size: 32, weight: .bold, design: .default))
                            
//                            VStack(spacing: geometry.size.height * 0.02) {
//                                ForEach(subjectInfo.content) { item in
//                                    ContentListView(title: item.name, numberOfClasses: item.numberOfClasses, progress: item.progress, width: geometry.size.width * 0.85, height: geometry.size.height * 0.07)
//                                }
//                            }

                            
                        }
                    }
                    
                }.padding()
                
            }
            .navigationTitle(Text(subjectInfo.name))
            .sheet(isPresented: $showingSheet) {
                InformationView(title: "Informações da disciplina", description: subjectInfo.goal, teachers: subjectInfo.teachers, tutors: subjectInfo.tutors, students: subjectInfo.students)
                    
            }
            
        }
        
        
        
    }
}

//struct SubjectView_Previews: PreviewProvider {
//    static var previews: some View {
//        SubjectView(subjectInfo: SubjectsModel(
//            name: "Introdução ao Git",
//            numberOfModules: 1,
//            numberOfClasses: 1,
//            goal: "Ajudá-lo a compreender os conceitos de controle de versão distribuido e começar a usar o Git. Conhça os coneitos basicos e fluxos de trabalho através de aulas passo-a-passo.",
//            tags: ["git", "controle de versão"],
//            content: [
//                ContentModel(
//                    name: "Primeira aula de Introdução ao Git",
//                    numberOfClasses: 1, progress: 30)
//            ]
//        ))
//    }
//}
