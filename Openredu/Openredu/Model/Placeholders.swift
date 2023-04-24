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
                teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                           MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                           MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                           MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                           MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                           MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
                courses: [
                    EnvironmentCoursesModel(
                        name: "Git",
                        numberOfSubjects: 2,
                        hours: 180,
                        description: "Curso sobre a ferramenta de controle de versões distribuído, utilizado principalmente no desenvolvimento de software.",
                        responsable: ["Alex Sandro Gomes", "Luiz Claudio Bacellar"],
                        teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                        tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                        students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                                   MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                                   MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                                   MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                                   MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                                   MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
                        subjects: [
                            SubjectsModel(
                                name: "Introdução ao Git",
                                numberOfModules: 1,
                                numberOfClasses: 1,
                                goal: "Ajudá-lo a compreender os conceitos de controle de versão distribuido e começar a usar o Git. Conhça os coneitos basicos e fluxos de trabalho através de aulas passo-a-passo.",
                                tags: ["git,", "controle de versão"],
                                teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                                tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                                students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                                           MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                                           MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                                           MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                                           MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                                           MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
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
                                goal: "Explicar mais sobre como o Git pode ser importante no mercado de trabalho.",
                                tags: ["trabalho,", "mercado"],
                                teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                                tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                                students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                                           MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                                           MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                                           MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                                           MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                                           MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
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
                        teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                        tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                        students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                                   MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                                   MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                                   MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                                   MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                                   MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
                        subjects: []
                    ),
                    
                    EnvironmentCoursesModel(
                        name: "Curso",
                        numberOfSubjects: 10,
                        hours: 500,
                        description: "",
                        responsable: [],
                        teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                        tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                        students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                                   MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                                   MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                                   MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                                   MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                                   MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
                        subjects: []
                    )
                ]
            ),
            
            EnvironmentTypeModel(
                title: "Universidade Federal de Pernambuco",
                description: "A comunidade Openredu.org articula Designer, Programadores, Educadores e Empreendedores em torno de desenvolvimento e da difusão da rede dosical educacional Openredu.",
                teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                           MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                           MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                           MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                           MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                           MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
                courses: [
                    EnvironmentCoursesModel(
                        name: "Git",
                        numberOfSubjects: 2,
                        hours: 180,
                        description: "Curso sobre a ferramena de controle de versões distribuído, utilizado principalmente no desenvolvimento de software.",
                        responsable: ["Alex Sandro Gomes", "Luiz Claudio Bacellar"],
                        teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                        tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                        students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                                   MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                                   MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                                   MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                                   MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                                   MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
                        subjects: [
                            SubjectsModel(
                                name: "Introdução ao Git",
                                numberOfModules: 1,
                                numberOfClasses: 1,
                                goal: "Ajudá-lo a compreender os conceitos de controle de versão distribuido e começar a usar o Git. Conhça os coneitos basicos e fluxos de trabalho através de aulas passo-a-passo.",
                                tags: ["git", "controle de versão"],
                                teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                                tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                                students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                                           MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                                           MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                                           MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                                           MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                                           MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
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
                        description: "Curso sobre as principais ferramentas e melhores maneiras de desenvolver para Web.",
                        responsable: ["Alex Sandro Gomes", "Luiz Claudio Bacellar"],
                        teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                        tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                        students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                                   MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                                   MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                                   MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                                   MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                                   MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
                        subjects: []
                    ),
                    
                    EnvironmentCoursesModel(
                        name: "Curso",
                        numberOfSubjects: 10,
                        hours: 500,
                        description: "",
                        responsable: [],
                        teachers: [MembersModel(image: "yver-bouckaert", name: "Yves Bouckaert")],
                        tutors: [MembersModel(image: "eduardo-moura", name: "Eduardo Moura")],
                        students: [MembersModel(image: "alessandra-pereira", name: "Alessandra Pereira"),
                                   MembersModel(image: "evaldo-junior", name: "Evaldo Júnior"),
                                   MembersModel(image: "felipe-vasconcelos", name: "Felipe Vasconcelos"),
                                   MembersModel(image: "pedro-moura", name: "Pedro Moura"),
                                   MembersModel(image: "luiza-oliveira", name: "Luiza Oliveira"),
                                   MembersModel(image: "antonia-ribeiro", name: "Antônia Ribeiro")],
                        subjects: []
                    )
                ]
            )
        ]
        
    }
}
