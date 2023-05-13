//
//  PerfilView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct PerfilView: View {
    
    var usuario: Usuario
    let columnLayout = Array(repeating: GridItem(), count: 2)
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    // HEADER
                    PerfilHeaderView(usuario: usuario)
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Text(usuario.nombre)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color("Color6"))
                                .padding(.top, 50)
                                .padding(.leading, 20)
                            if usuario.verificacion {
                                Image(systemName: "checkmark.seal")
                                    .offset(y:26)
                            }
                            Spacer()
                        }
                        
                        Text(usuario.puestos[0])
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color8"))
                            .padding(.leading, 20)
                        Text(usuario.ciudad)
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color8"))
                            .padding(.leading, 20)
                        
                        Text(usuario.giro)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color8"))
                            .padding(.top,50)
                            .padding(.bottom, 20)
                        Text("Areas de Interés")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color8"))
                        
                        VStack{
                            HStack{
                                PuestosView(usuario: usuario, index: 0)
                                PuestosView(usuario: usuario, index: 1)
                            }
                            HStack{
                                PuestosView(usuario: usuario, index: 2)
                                VStack {
                                    Image(systemName: "plus.circle")
                                        .foregroundColor(Color("Color2"))
                                }
                                .frame(height: 7)
                                .padding()
                                .background(
                                    Color("Color5")
                                )
                                .cornerRadius(8)
                                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 2, x: 2, y: 2)
                            }
                        }
                        .frame(minWidth: 300)
                        .padding()
                        
                        
                        /*
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
                         */
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(usuario.nombre, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView(usuario: usuariosData[0])
    }
}
