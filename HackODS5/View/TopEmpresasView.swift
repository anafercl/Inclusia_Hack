//
//  TopEmpresasView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct TopEmpresasView: View {
    var empresas: [Empresa] = empresasData
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("En este apartado se muestran las cinco empresas mejores calificadas con respecto a la equidad salarial y su ambiente laboral.")
                    .font(.footnote)
                    .padding(.bottom, 15)
                    .padding(.horizontal, 10)
            ForEach(empresas) { item in
                NavigationLink(destination: EmpresaDetailView(empresa: item)) {
                    EmpresaRowView(empresa: item)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                }
            }
        
            }.navigationTitle("5 Mejores Empresas")
    
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct TopEmpresasView_Previews: PreviewProvider {
    static var previews: some View {
        TopEmpresasView()
    }
}
