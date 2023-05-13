//
//  EmpresaRowView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct EmpresaRowView: View {
    var empresa : Empresa
    
    var body: some View {
        ZStack {
            Color("Color2")
            HStack {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(empresa.nombre)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color6"))
                    Text(empresa.giro)
                        .font(.caption)
                        .foregroundColor(Color.secondary)
                    
                }
                Spacer()
                Text(String(format: "%.1f", empresa.rating))
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color6"))
                Image(systemName: "star.fill")
                    .foregroundColor(Color("Color3"))
                
            }.padding(20)
        } //: HSTACK
    }
}

struct EmpresaRowView_Previews: PreviewProvider {
    static var previews: some View {
        EmpresaRowView(empresa: empresasData[0])
    }
}
