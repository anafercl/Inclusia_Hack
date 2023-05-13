//
//  PerfilHeaderView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct PerfilHeaderView: View {
    var usuario: Usuario
    
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomLeading){

            LinearGradient(gradient: Gradient(colors: [Color("Color2"), Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(usuario.foto)
                .resizable()
                .scaledToFit()
                .cornerRadius(80)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .offset(y: 60)
                .offset(x: 40)
                .padding(.vertical, 10)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
             

        }
        .frame(height: 180)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

struct PerfilHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilHeaderView(usuario: usuariosData[0])
    }
}
