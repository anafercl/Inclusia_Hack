//
//  EmpresaDetailView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct EmpresaDetailView: View {
    @State var showView = false
    var empresa : Empresa
    
    var body: some View {
        ZStack {
            VStack (alignment: .leading){
                Text(empresa.nombre)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                HStack {
                    Text(empresa.ubicacion)
                        .font(.title2)
                        .foregroundColor(Color("Color3"))
                    Spacer()
                    Text(String(format: "%.1f", empresa.rating))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color3"))
                }
                HStack {
                    Text(empresa.giro)
                        .font(.title2)
                        .foregroundColor(Color("Color3"))
                    Spacer()
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(Color("Color3"))
                        Image(systemName: "star.fill")
                            .foregroundColor(Color("Color3"))
                        Image(systemName: "star.fill")
                            .foregroundColor(Color("Color3"))
                        Image(systemName: "star.fill")
                            .foregroundColor(Color("Color3"))
                        Image(systemName: "star")
                            .foregroundColor(Color("Color3"))
                        
                    }
                }
                
                Button {
                    showView.toggle()
                } label: {
                    Text("Califica a esta empresa")
                        .fontWeight(.semibold)
                        .padding(10)
                        .background(
                            Color("Color1")
                                .cornerRadius(10)
                        )
                }.padding(10)
                    .sheet(isPresented: $showView) {
                        CalificarView()
                    }
                
                Text("Comentarios")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color3"))
                
                ScrollView{
                    ForEach(empresa.comentarios.indices) { item in
                        
                        ZStack {
                            RoundedRectangle(
                                cornerRadius: 10.0
                            )
                            .fill(Color("Color2"))
                            .frame(width: .infinity, height: 170)
                            .padding(5)
                            
                            VStack {
                                HStack {
                                    Text("Anonimo")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("Color6"))
                                    .padding(5)
                                    Spacer()
                                    Text("3.5")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("Color6"))
                                }.padding(.horizontal, 15)
                                Text(empresa.comentarios[item])
                                    .font(.body)
                                    .padding(10)
                            }
                        }
                    }
                }
                
            
            }.padding(20)
        }
        
    }
}

struct EmpresaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmpresaDetailView(empresa: empresasData[0])
    }
}
