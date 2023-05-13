//
//  NoticiaSizeGView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct NoticiaSizeGView: View {
    var noticia: Noticia
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5){
                Spacer()
                Text(noticia.nombre)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color8"))
                Text(noticia.headline)
                    .font(.headline)
                    .foregroundColor(Color("Color3"))
                    .padding(.top, 8)
                    .padding(.bottom, 17)
            }
            
        }
        .padding()
        .frame(width: 350, height: 150)
        .background(
            Color("Color7")
        )
        .cornerRadius(8)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 2, x: 2, y: 2)
    }
}

struct NoticiaSizeGView_Previews: PreviewProvider {
    static var previews: some View {
        NoticiaSizeGView(noticia: noticiasData[1])
    }
}
