//
//  RatingView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct RatingView: View {
    @State private var searchText = ""
    var empresas: [Empresa] = empresasData
    var empresasNombres = ["Acme Corporation", "Cars Electric", "London Corp", "Carnes Monterrey", "Food Fast"]
    
    var body: some View {
        NavigationStack {
            ZStack {
                List {
                        ForEach(searchResults, id: \.self) { name in
                            NavigationLink {
                                EmpresaDetailView(empresa: empresas[0])
                            } label: {
                                Text(name)
                            }
                        }
                }.navigationTitle("")
                TopEmpresasView()
            }
                                    
            }
                    .searchable(text: $searchText)
                    
        
            }
    var searchResults: [String] {
            if searchText.isEmpty {
                return [""]
            } else {
                return empresasNombres.filter { $0.contains(searchText) }
            }
        }
       
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
