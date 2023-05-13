//
//  TabNavigationView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct TabNavigationView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Empresas", systemImage: "house")
            }
            RatingView()
                .tabItem {
                    Label("Empresas", systemImage: "star")
            }
            PerfilView(usuario: usuariosData[0])
                .tabItem {
                    Label("Perfil", systemImage: "person")
            }
        }
        
    }
}

struct TabNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigationView()
    }
}
