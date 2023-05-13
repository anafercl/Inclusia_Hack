//
//  NoticiaHeaderView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct NoticiaHeaderView: View {
    var noticia: Noticia
    
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomLeading){

            LinearGradient(gradient: Gradient(colors: [Color("Color2"), Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Text(noticia.nombre)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color("Color6"))
                .padding(.bottom, 50)
                .padding(.leading, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.9)
            Text(noticia.headline)
                .font(.headline)
                .foregroundColor(Color("Color10"))
                .multilineTextAlignment(.leading)
                .padding(.leading, 20)
                .padding(.bottom, 20)
               
            /*
            Image(noticia.imagen)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
             */

        }
        .frame(height: 200)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

struct NoticiaHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        NoticiaHeaderView(noticia: noticiasData[0])
            .previewLayout(.fixed(width: 375, height: 150))
    }
}
