//
//  NoticiaSizeSView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct NoticiaSizeSView: View {
    var noticia: Noticia
    
    var body: some View {
        /*
        Image(noticia.imagen)
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 80, height: 80, alignment: .center)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
            .cornerRadius(8)
         */
        HStack {
            VStack(alignment: .leading, spacing: 5){
                Spacer()
                Text(noticia.nombre)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color6"))
                Text(noticia.headline)
                    .font(.headline)
                    .foregroundColor(Color("Color8"))
                    .padding(.top, 10)
            }
        }
        .padding()
        .frame(width: 170, height: 200)
        .background(
            Color("Color1")
        )
        .cornerRadius(8)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 2, x: 2, y: 2)
    }
}

struct NoticiaSizeSView_Previews: PreviewProvider {
    static var previews: some View {
        NoticiaSizeSView(noticia: noticiasData[0])
    }
}
