//
//  EmpresaModel.swift
//  HackODS5
//
//  Created by Tlanetzi Chavez on 11/05/23.
//

import Foundation

import SwiftUI

// MARK: - EMPRESAS DATA MODEL

struct Empresa: Identifiable {
    var id = UUID()
    var nombre: String
    var ubicacion: String
    var giro: String
    var rating: Float
    var comentarios: [String]
}

