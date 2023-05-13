//
//  LinkView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct LinkView: View {
    var noticia: Noticia
    
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Noticiero", destination: URL(string: noticia.link!)!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView(noticia: noticiasData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
