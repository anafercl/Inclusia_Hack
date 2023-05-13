//
//  UsuarioModel.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import Foundation

struct Usuario: Identifiable {
    var id = UUID()
    var nombre: String
    var verificacion: Bool
    var ciudad: String
    var puestos: [String]
    var giro: String
    var carrera: String
    var foto: String
}
