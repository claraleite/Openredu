//
//  ProfileView.swift
//  Openredu
//
//  Created by mccl on 03/04/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var selected = 1
    
    @State private var name = "Maria Clara Leite"
    
    @State private var nameInEditMode = false
    
    @State private var date = "02/12/2001"
    
    @State private var dateInEditMode = false
    
    @State private var newsIsOn = false
    @State private var messagesIsOn = false
    @State private var followersIsOn = false
    
    @State private var everyoneIsOn = false
    @State private var friendsIsOn = false
    
    @State private var email = "claracleite@hotmail.com"

    @State private var emailInEditMode = false

    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                
                VStack(alignment: .leading, spacing: geometry.size.height * 0.03) {
                    
                    Picker(selection: $selected, label: Text("Picker"), content: {
                        Text("Perfil").tag(1)
                        Text("Conta").tag(2)
                        
                    })
                    .pickerStyle(.segmented)
                    
                    if selected == 1 {
                        
                        HStack(spacing: geometry.size.width * 0.05) {
                            VStack {
                                Image("maria-clara-leite")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.3)
                            }
                            VStack(alignment: .leading, spacing: geometry.size.height * 0.03) {
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack(spacing: 12) {
                                        Text("Nome")
                                            .font(.system(size: 14, weight: .bold, design: .default))
                                        
                                        
                                        Button(action: {
                                            self.nameInEditMode.toggle()
                                        }) {
                                            Text(nameInEditMode ? "Concluir" : "Editar")
                                                .font(.system(size: 11, weight: .regular, design: .default))
                                                .foregroundColor(Color("Azulado-1"))
                                        }
                                        
                                    }
                                    
                                    if nameInEditMode {
                                        TextField("Name", text: $name).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.leading, 5).font(.system(size: 16))
                                            .autocapitalization(.words)
                                            .disableAutocorrection(true)
                                    }  else {
                                        Text(name).font(.system(size: 16))
                                    }
                                    
                                }
                                
                                VStack(alignment: .leading, spacing: 8) {
                                
                                    HStack(spacing: 12) {
                                    Text("Data de nascimento")
                                        .font(.system(size: 14, weight: .bold, design: .default))
                                    
                                    
                                    Button(action: {
                                        self.nameInEditMode.toggle()
                                    }) {
                                        Text(nameInEditMode ? "Concluir" : "Editar")
                                            .font(.system(size: 11, weight: .regular, design: .default))
                                            .foregroundColor(Color("Azulado-1"))
                                    }
                                    
                                }
                                
                                if nameInEditMode {
                                    TextField("Name", text: $date).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.leading, 5).font(.system(size: 16))
                                        .autocapitalization(.words)
                                                    .disableAutocorrection(true)
                                }  else {
                                    Text(date).font(.system(size: 16))
                                }

                            }
                            }

  
                                
                        }
                        
                        
                    }
                    
                    else {
                        
                        VStack(alignment: .leading, spacing: geometry.size.height * 0.02) {
                            Text("Notificações por e-mail")
                                .font(.system(size: 14, weight: .bold, design: .default))
                            
                            VStack(alignment: .leading, spacing: geometry.size.height * 0.01) {
                                
                                Toggle(isOn: $newsIsOn) {
                                    Text("Novidades Openredu")
                                }
                                .toggleStyle(iOSCheckboxToggleStyle())
                                
                                Toggle(isOn: $messagesIsOn) {
                                    Text("Mensagens recebidas")
                                }
                                .toggleStyle(iOSCheckboxToggleStyle())
                                
                                Toggle(isOn: $followersIsOn) {
                                    Text("Novos seguidores")
                                }
                                .toggleStyle(iOSCheckboxToggleStyle())
                                
                            }
                            
                            VStack(alignment: .leading, spacing: geometry.size.height * 0.02) {
                                
                                Text("Meu mural é visível a")
                                    .font(.system(size: 14, weight: .bold, design: .default))
                                
                                VStack(alignment: .leading, spacing: geometry.size.height * 0.01) {
                                    
                                    Toggle(isOn: $everyoneIsOn) {
                                        Text("Todos")
                                    }
                                    .toggleStyle(iOSCheckboxToggleStyle())
                                    
                                    Toggle(isOn: $friendsIsOn) {
                                        Text("Apenas amigos")
                                    }
                                    .toggleStyle(iOSCheckboxToggleStyle())
                                }
                                
                                
                            }
                            
                            VStack(alignment: .leading, spacing: geometry.size.height * 0.02) {
                                
                                HStack {
                                    
                                    Text("E-mail")
                                        .font(.system(size: 14, weight: .bold, design: .default))
                                    
                                    Button(action: {
                                        self.nameInEditMode.toggle()
                                    }) {
                                        Text(nameInEditMode ? "Concluir" : "Editar")
                                            .font(.system(size: 11, weight: .regular, design: .default))
                                            .foregroundColor(Color("Azulado-1"))
                                    }

                                }
                                
                                if nameInEditMode {
                                    TextField("Email", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.leading, 5).font(.system(size: 16))
                                        .autocapitalization(.words)
                                        .disableAutocorrection(true)
                                }  else {
                                    Text(email).font(.system(size: 16))
                                }

                                
                            }
                        }
                        
                        
                        
                    }
                }
            }
            .padding(24)
        }
    }
    
    struct iOSCheckboxToggleStyle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {

            Button(action: {

                configuration.isOn.toggle()

            }, label: {
                HStack {
                    Image(systemName: configuration.isOn ? "checkmark.square" : "square")

                    configuration.label
                }
            })
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
