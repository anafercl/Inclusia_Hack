//
//  NoticiaModel.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import Foundation

struct Noticia: Identifiable {
    var id = UUID()
    var nombre: String
    var headline: String
    var imagen: String
    var descripcion: String
    var link: String?
}
