//
//  CalificarView.swift
//  HackODS5
//
//  Created by Alumno on 12/05/23.
//

import SwiftUI

struct CalificarView: View {
    @State var textInput: String = ""
    var body: some View {
        VStack {
            Text("Califica esta empresa")
                .font(.title)
                .padding(20)
            HStack{
                Image(systemName: "star")
                    .foregroundColor(Color("Color3"))
                Image(systemName: "star")
                    .foregroundColor(Color("Color3"))
                Image(systemName: "star")
                    .foregroundColor(Color("Color3"))
                Image(systemName: "star")
                    .foregroundColor(Color("Color3"))
                Image(systemName: "star")
                    .foregroundColor(Color("Color3"))
                
            }.scaleEffect(2)
                .padding(15)
            
            TextField("Comentario...", text:$textInput)
                .frame(width: .infinity, height: 200)
                .background(Color("Color2"))
                .cornerRadius(20)
                .padding(10)
            
        }.frame(width: .infinity, height:100)
    }
}

struct CalificarView_Previews: PreviewProvider {
    static var previews: some View {
        CalificarView()
    }
}
