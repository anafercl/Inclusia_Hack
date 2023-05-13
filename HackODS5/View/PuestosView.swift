//
//  PuestosView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct PuestosView: View {
    var usuario: Usuario
    var index: Int
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5){
                Spacer()
                Text(usuario.puestos[index])
                    .fixedSize(horizontal: true, vertical: false)
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color4"))
                    .padding(.bottom, 10)
            }
            Image(systemName: "xmark.circle")
                .foregroundColor(Color("Color4"))
                .padding(.leading, 20)
        }
        .frame(height: 7)
        .padding()
        .background(
            Color("Color7")
        )
        .cornerRadius(8)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 2, x: 2, y: 2)
    }
}

struct PuestosView_Previews: PreviewProvider {
    static var previews: some View {
        PuestosView(usuario: usuariosData[0], index: 0)
    }
}
