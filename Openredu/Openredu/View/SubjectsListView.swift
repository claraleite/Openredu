//
//  SubjectsListView.swift
//  Openredu
//
//  Created by mccl on 08/04/23.
//

import SwiftUI

struct SubjectsListView: View {
    @State var title: String
    var numberOfModules: Int
    var numberOfClasses: Int
    
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
                            
                            if numberOfModules == 1 {
                                Text("\(numberOfModules) módulo")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14, weight: .regular, design: .default))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            } else {
                                Text("\(numberOfModules) módulos")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14, weight: .regular, design: .default))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            
                            if numberOfClasses == 1 {
                                Text("\(numberOfClasses) aula")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14, weight: .regular, design: .default))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            } else {
                                Text("\(numberOfClasses) aulas")
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

//struct SubjectsListView_Previews: PreviewProvider {
//    static var previews: some View {
//        SubjectsListView(title: "Introdução ao Git", numberOfModules: 1, numberOfClasses: 1, nextView: CourseView(), width: 360, height: 80)
//    }
//}
