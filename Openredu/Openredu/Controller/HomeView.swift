//
//  HomeView.swift
//  Openredu
//
//  Created by mccl on 03/04/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var selected = 1

    let logProfile = ProfileModel.logProfile()
    
    let columns = [
        GridItem(.adaptive(minimum: 105))
    ]
    
    var body: some View {
        GeometryReader { geometry in

                
                ZStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: geometry.size.height * 0.03) {
                        
                        
                        Picker(selection: $selected, label: Text("Picker"), content: {
                            Text("Meu Mural").tag(1)
                            Text("Meus Contatos").tag(2)
                            
                        })
                        .pickerStyle(.segmented)
                        
                        if selected == 1 {
                            
                            VStack(spacing: -geometry.size.height * 0.35) {
                                
                                ForEach(logProfile.mural) { muralPost in
                                    MuralPostsView(imageName: muralPost.image, name: muralPost.name, time: muralPost.time, content: muralPost.content)
                                }
                            }
                            
                            
                        } else {
                            
                            VStack(spacing: geometry.size.height * 0.05) {
                                
                                LazyVGrid(columns: columns, spacing: 40) {
                                    ForEach(logProfile.contacts) { contact in
                                        MembersProfileView(image: contact.image, name: contact.name)
                                    }
                                }
                                
                                Text("Adicione amigos e crie sua rede social educacional. Você pode conversar, ajudar e tirar dúvidas com seus amigos.")
                                    .font(.system(size: 16, weight: .regular, design: .default))
                            }
                            
                        }
                        
                    }
                    .padding()
                    .navigationBarTitle(Text(""), displayMode: .inline)
                }
                
                
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
