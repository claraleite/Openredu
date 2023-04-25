//
//  ContentView.swift
//  Openredu
//
//  Created by mccl on 03/04/23.
//

import SwiftUI

enum Tabs: String {
    case Início
    case Ambientes
    case Configurações
}

struct ContentView: View {
    
    @State private var selection: Tabs = .Início
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selection) {
                HomeView()
                    .tabItem {
                        Label("Início", image: selection == .Início ? "Inicio-azul" : "Inicio-cinza")
                    }.tag(Tabs.Início)
                
                EnvironmentView()
                    .tabItem {
                        Label("Ambientes", image: selection == .Ambientes ? "Ambientes-azul" : "Ambientes-cinza")
                    }.tag(Tabs.Ambientes)
                
                ProfileView()
                    .tabItem {
                        Label("Configurações", image: selection == .Configurações ? "Configuracoes-azul" : "Configuracoes-cinza")
                    }.tag(Tabs.Configurações)
                
                
            }.accentColor(Color("Azulado-1"))
                .navigationTitle(selection.rawValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
