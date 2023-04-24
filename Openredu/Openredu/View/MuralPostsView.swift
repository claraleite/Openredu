//
//  MuralPostsView.swift
//  Openredu
//
//  Created by mccl on 24/04/23.
//

import SwiftUI

struct MuralPostsView: View {
    
    var imageName: String
    var name: String
    var time: String
    var content: String
    
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 42)
                        
                        VStack(alignment: .leading) {
                            Text(name)
                                .font(.system(size: 16, weight: .bold, design: .default))
                            
                            Text("há \(time)")
                                .font(.system(size: 14, weight: .regular, design: .default))
                        }
                    }
                    
                    Text(content)
                        .font(.system(size: 16, weight: .regular, design: .default))
                        .multilineTextAlignment(.leading)
                        .frame(width: 320)
                    
                }
                .padding()
                
            }
            
            .frame(maxWidth: .infinity)
            
            .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.white))
                            .shadow(radius: 3)
            )
            
            
            
        }
    }
}

struct MuralPostsView_Previews: PreviewProvider {
    static var previews: some View {
        MuralPostsView(imageName: "luiza-oliveira", name: "Luiza Oliveira", time: "1 semana", content: "Hoje teremos uma palestra 100% remota sobre o assunto.")
    }
}
