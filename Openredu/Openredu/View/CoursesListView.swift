//
//  CoursesListModel.swift
//  Openredu
//
//  Created by mccl on 07/04/23.
//

import SwiftUI

struct CoursesListView: View {
    @State var title: String
    var numberOfSubjects: Int
    var hours: Int
    
    let nextView: any View
    
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        
        NavigationLink(
            destination: {
                AnyView(nextView)
            }, label: {
                
                ZStack(alignment: .leading) {
                    HStack() {
                        VStack(alignment: .leading, spacing: 3) {
                            Text(title)
                                .foregroundColor(Color.white)
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("\(numberOfSubjects) disciplinas")
                                .foregroundColor(Color.white)
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            HStack {
                                Image(systemName: "clock")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14))
                                
                                Text("\(hours) horas")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14, weight: .regular, design: .default))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        
                        Image(systemName: "chevron.forward")
                            .frame(alignment: .trailing)
                            .foregroundColor(Color.white)
                            .font(Font.system(size: 20))
                    }
                    .frame(maxWidth: .infinity, minHeight: height)
                    .padding(20)
                    .background(Color("Azulado-2"))
                    .cornerRadius(5)
                    
                    
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                .frame(maxWidth: .infinity)
            }
        )
    }
}

struct CoursesListModel_Previews: PreviewProvider {
    static var previews: some View {
        CoursesListView(title: "Desenvolvimento Web", numberOfSubjects: 2, hours: 180, nextView: CourseView(courseInfo: EnvironmentCoursesModel(
            name: "Git",
            numberOfSubjects: 2,
            hours: 180,
            description: "Curso sobre a ferramena de controle de versões distribuído, utilizado principalmente no desenvolvimento de software.",
            responsable: ["Alex Sandro Gomes", "Luiz Claudio Bacellar"],
            subjects: [
                SubjectsModel(
                    name: "Introdução ao Git",
                    goal: "Ajudá-lo a compreender os conceitos de controle de versão distribuido e começar a usar o Git. Conhça os coneitos basicos e fluxos de trabalho através de aulas passo-a-passo.",
                    tags: ["git", "controle de versão"],
                    content: [
                        ContentModel(
                            name: "Primeira aula de Introdução ao Git",
                            numberOfClasses: 1, progress: 30)
                    ]
                ),
                SubjectsModel(
                    name: "Git no mercado de trabalho",
                    goal: "Ajudá-lo a compreender os conceitos de controle de versão distribuido e começar a usar o Git. Conhça os coneitos basicos e fluxos de trabalho através de aulas passo-a-passo.",
                    tags: ["trabalho", "mercado"],
                    content: [
                    ContentModel(
                        name: "Como pode ser útil?",
                        numberOfClasses: 3,
                        progress: 60)
                    ]
                )
            ]
        )), width: 360, height: 80)
    }
}
