//
//  CourseView.swift
//  Openredu
//
//  Created by mccl on 08/04/23.
//

import SwiftUI

struct CourseView: View {
    
    var courseInfo: EnvironmentCoursesModel
    let logEnvironments = EnvironmentTypeModel.logEnvironments()
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(alignment: .leading, spacing: geometry.size.height * 0.03) {
                    Text(courseInfo.description)
                        .font(.system(size: 16, weight: .regular, design: .default))
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    
                    Text("Responsáveis:")
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    
                    VStack(alignment: .leading, spacing: geometry.size.height * 0.005) {
                    
                        ForEach(courseInfo.responsable, id: \.self) { item in
                            Text(item)
                                .font(.system(size: 16, weight: .regular, design: .default))
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        }
                    }
                    
                    Text("Disciplinas")
                        .font(.system(size: 32, weight: .bold, design: .default))
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    
                    VStack(spacing: geometry.size.height * 0.02) {
                        ForEach(courseInfo.subjects) { item in
                            SubjectsListView(title: item.name, numberOfModules: item.numberOfModules, numberOfClasses: item.numberOfClasses, nextView: SubjectView(subjectInfo: item), width: geometry.size.width * 0.85, height: geometry.size.height * 0.07)
                        }
                    }
                    
                }.navigationTitle(courseInfo.name)
            }
        }
        
        
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(courseInfo: EnvironmentCoursesModel(
            name: "Git",
            numberOfSubjects: 2,
            hours: 180,
            description: "Curso sobre a ferramena de controle de versões distribuído, utilizado principalmente no desenvolvimento de software.",
            responsable: ["Alex Sandro Gomes", "Luiz Claudio Bacellar"],
            subjects: [
                SubjectsModel(
                    name: "Introdução ao Git",
                    numberOfModules: 1,
                    numberOfClasses: 1,
                    goal: "Ajudá-lo a compreender os conceitos de controle de versão distribuido e começar a usar o Git. Conhça os coneitos basicos e fluxos de trabalho através de aulas passo-a-passo.",
                    tags: ["git", "controle de versão"],
                    content: [
                        ContentModel(
                            name: "Primeira aula de Introdução ao Git",
                            numberOfClasses: 1, progress: 30)
                    ]
                )
            ]
        ))
    }
}
