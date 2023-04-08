//
//  ContentView.swift
//  Openredu
//
//  Created by mccl on 08/04/23.
//

import SwiftUI

struct ContentListView: View {
    @State var title: String
    var numberOfClasses: Int
    var progress: Int
        
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
    
                
                ZStack(alignment: .leading) {
                    HStack() {
                        VStack(alignment: .leading, spacing: 3) {
                            Text(title)
                                .foregroundColor(Color.white)
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
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
                            
                                Text("\(progress)/100%")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14, weight: .regular, design: .default))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            
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

}

struct ContentListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentListView(title: "Introdução ao Git", numberOfClasses: 1, progress: 50, width: 360, height: 80)
    }
}
