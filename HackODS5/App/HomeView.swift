//
//  HomeView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct HomeView: View {
    
    var noticias: [Noticia] = noticiasData
    let columnLayout = Array(repeating: GridItem(), count: 2)
    let columnLayout2 = Array(repeating: GridItem(), count: 1)
    
    var body: some View {
        NavigationStack{
            HStack{
                Text("Inclusia")
                    .font(.system(size: 36))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.horizontal, 20)
            
            ScrollView {
                VStack{
                    MedidorView()
                        .padding(.bottom, 10)
                    LazyVGrid(columns: columnLayout) {
                        ForEach(noticias.shuffled()) { item in
                            NavigationLink(destination: NoticiasDetailView(noticia: item)){
                                NoticiaSizeSView(noticia: item)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.bottom, 10)
                    LazyVGrid(columns: columnLayout2) {
                        ForEach(noticias.shuffled()) { item in
                            NavigationLink(destination: NoticiasDetailView(noticia: item)){
                                NoticiaSizeGView(noticia: item)
                            }
                            .buttonStyle(.plain)
                        }
                        .padding(.bottom, 10)
                    }
                }
            }
            .padding()
            
            
        }
        
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
