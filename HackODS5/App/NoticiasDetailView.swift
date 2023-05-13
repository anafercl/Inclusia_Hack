//
//  NoticiasDetailView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct NoticiasDetailView: View {
    var noticia: Noticia
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    // HEADER
                    NoticiaHeaderView(noticia: noticia)
                    
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        
                        
                        // DESCRIPTION
                        Text(noticia.descripcion)
                            .multilineTextAlignment(.leading)
                        
                        // IMAGE
                        Image(noticia.imagen)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(8)
                            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                            .padding(.vertical, 20)
                            
                        
                        // SUBHEADLINE
                        Text("Lee más de la \(noticia.nombre)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color8"))
                        
                        // LINK
                        LinkView(noticia: noticia)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(noticia.nombre, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

struct NoticiasDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NoticiasDetailView(noticia: noticiasData[0])
    }
}
