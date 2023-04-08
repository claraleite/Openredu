//
//  logEnvironments.swift
//  Openredu
//
//  Created by mccl on 08/04/23.
//

import Foundation

extension EnvironmentTypeModel {
    
    static func logEnvironments() -> [EnvironmentTypeModel] {
        return [
            EnvironmentTypeModel(
                title: "Comunidade Openredu",
                description: "A comunidade Openredu.org articula Designer, Programadores, Educadores e Empreendedores em torno de desenvolvimento e da difusão da rede dosical educacional Openredu.",
                courses: [
                    EnvironmentCoursesModel(
                        name: "Git",
                        numberOfSubjects: 2,
                        hours: 180,
                        description: "Curso sobre a ferramenta de controle de versões distribuído, utilizado principalmente no desenvolvimento de software.",
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
                            ),
                            SubjectsModel(
                                name: "Git no mercado de trabalho",
                                numberOfModules: 2,
                                numberOfClasses: 4,
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
                    ),
                    
                    EnvironmentCoursesModel(
                        name: "Desenvolvimento Web",
                        numberOfSubjects: 5,
                        hours: 300,
                        description: "Curso sobre a ferramena de controle de versões distribuído, utilizado principalmente no desenvolvimento de software.",
                        responsable: ["Alex Sandro Gomes", "Luiz Claudio Bacellar"],
                        subjects: []
                    ),
                    
                    EnvironmentCoursesModel(
                        name: "Curso",
                        numberOfSubjects: 10,
                        hours: 500,
                        description: "",
                        responsable: [],
                        subjects: []
                    )
                ]
            ),
            
            EnvironmentTypeModel(
                title: "Universidade Federal de Pernambuco",
                description: "A comunidade Openredu.org articula Designer, Programadores, Educadores e Empreendedores em torno de desenvolvimento e da difusão da rede dosical educacional Openredu.",
                courses: [
                    EnvironmentCoursesModel(
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
                    ),
                    
                    EnvironmentCoursesModel(
                        name: "Desenvolvimento Web",
                        numberOfSubjects: 5,
                        hours: 300,
                        description: "Curso sobre a ferramena de controle de versões distribuído, utilizado principalmente no desenvolvimento de software.",
                        responsable: ["Alex Sandro Gomes", "Luiz Claudio Bacellar"],
                        subjects: []
                    ),
                    
                    EnvironmentCoursesModel(
                        name: "Curso",
                        numberOfSubjects: 10,
                        hours: 500,
                        description: "",
                        responsable: [],
                        subjects: []
                    )
                ]
            )
        ]
        
    }
}
