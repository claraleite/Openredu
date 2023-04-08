//
//  ContentView.swift
//  Openredu
//
//  Created by mccl on 03/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Início", image: selection == 0 ? "Inicio-azul" : "Inicio-cinza")
                }.tag(0)
            
            EnvironmentView()
                .tabItem {
                    Label("Ambientes", image: selection == 1 ? "Ambientes-azul" : "Ambientes-cinza")
                }.tag(1)
            
            ProfileView()
                .tabItem {
                    Label("Configurações", image: selection == 2 ? "Configuracoes-azul" : "Configuracoes-cinza")
                }.tag(2)
            
            
        }.accentColor(Color("Azulado-1"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
