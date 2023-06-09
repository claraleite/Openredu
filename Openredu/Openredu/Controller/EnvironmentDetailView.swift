//
//  EnvironmentDetailView.swift
//  Openredu
//
//  Created by mccl on 06/04/23.
//

import SwiftUI

struct EnvironmentDetailView: View {
    
    @State private var showingSheet = false
    
    var environmentInfo: EnvironmentTypeModel
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                
                VStack(alignment: .leading, spacing: geometry.size.height * 0.02) {
                    
                    HStack {
                        
                        Text(environmentInfo.title)
                            .font(.system(size: 35, weight: .bold, design: .default))
                            .multilineTextAlignment(.leading)
                        
                        Spacer()

                        Button {
                            showingSheet.toggle()
                        } label: {
                            Image(systemName: "info.circle")
                                .font(.system(size: 20))
                                .foregroundColor(.accentColor)

                        }
                        

                    }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    
                    Text(environmentInfo.description)
                        .font(.system(size: 16, weight: .regular, design: .default))
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    
                    Text("Cursos")
                        .font(.system(size: 32, weight: .bold, design: .default))
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))

                    
                    VStack(spacing: geometry.size.height * 0.02) {
                        CoursesListView(title: environmentInfo.courses[0].name, numberOfSubjects: environmentInfo.courses[0].numberOfSubjects, hours: environmentInfo.courses[0].hours, nextView: CourseView(courseInfo: environmentInfo.courses[0]), width: geometry.size.width * 0.85, height: geometry.size.height * 0.07)
                        CoursesListView(title: environmentInfo.courses[1].name, numberOfSubjects: environmentInfo.courses[1].numberOfSubjects, hours: environmentInfo.courses[1].hours, nextView: CourseView(courseInfo: environmentInfo.courses[1]), width: geometry.size.width * 0.85, height: geometry.size.height * 0.07)
                        CoursesListView(title: environmentInfo.courses[2].name, numberOfSubjects: environmentInfo.courses[2].numberOfSubjects, hours: environmentInfo.courses[2].hours, nextView: CourseView(courseInfo: environmentInfo.courses[2]), width: geometry.size.width * 0.85, height: geometry.size.height * 0.07)

                    }
                    
                    
                }
                
                
                
            }
            .navigationBarTitle(Text(""), displayMode: .inline)
            .sheet(isPresented: $showingSheet) {
                InformationView(title: "Informações do ambiente", description: environmentInfo.description, teachers: environmentInfo.teachers, tutors: environmentInfo.tutors, students: environmentInfo.students)
                    
            }
            
        }
    }
}

//struct EnvironmentDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        EnvironmentDetailView(environmentInfo: EnvironmentTypeModel(title: "Comunidade Openredu", description: "A comunidade Openredu.org articula Designer, Programadores, Educadores e Empreendedores em torno de desenvolvimento e da difusão da rede dosical educacional Openredu.", courses: [EnvironmentCoursesModel(name: "Git", numberOfSubjects: 2, hours: 180, description: "Curso sobre a ferramena de controle de versões distribuído, utilizado principalmente no desenvolvimento de software.", responsable: ["Alex Sandro Gomes", "Luiz Claudio Bacellar"], subjects: [SubjectsModel(name: "Introdução ao Git", numberOfModules: 1, numberOfClasses: 1, goal: "Ajudá-lo a compreender os conceitos de controle de versão distribuido e começar a usar o Git. Conhça os coneitos basicos e fluxos de trabalho através de aulas passo-a-passo.", tags: ["git", "controle de versão"], content: [ContentModel(name: "Primeira aula de Introdução ao Git", numberOfClasses: 1, progress: 30)])])]))
//    }
//}
