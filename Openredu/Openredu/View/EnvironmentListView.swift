//
//  EnvironmentListModel.swift
//  Openredu
//
//  Created by mccl on 03/04/23.
//

import SwiftUI

struct EnvironmentListView: View {
    
    @State var title: String
    
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
                        Text(title)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
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
//
//struct EnvironmentListModel_Previews: PreviewProvider {
//    static var previews: some View {
//        EnvironmentListModel(title: "Universidade Federal de Pernambuco", nextView: EnvironmentDetailView(), width: 360, height: 80)
//    }
//}
