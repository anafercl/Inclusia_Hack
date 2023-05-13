//
//  EmpresaData.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import Foundation
import SwiftUI

// MARK: - EMPRESAS DATA

let empresasData: [Empresa] = [
    Empresa(
        nombre: "Acme Corporation",
        ubicacion: "Monterrey",
        giro: "Manufactura",
        rating: 4.0,
        comentarios: ["Buena atención de los superiores, me sentí muy cómoda y respetada. Empresa completamente recomendada.", "Excelente empresa, te ayudan mucho a crecer tu perfil profesional. Igualmente tenemos conferencias de mujeres en puestos superiores.", "Me gusta mucho trabajar aquí porque hacen eventos para empoderar a las mujeres."]
    ),
    Empresa(
        nombre: "Tech Solutions",
        ubicacion: "Monterrey",
        giro: "Tecnología de la Información",
        rating: 3.8,
        comentarios: ["Los colegas son innovadoras y confiables"]
    ),
    Empresa(
        nombre: "Healthy Eats",
        ubicacion: "Monterrey",
        giro: "Salud",
        rating: 3.5,
        comentarios: ["Buen ambiente", "Pago razonables"]
    ),
    Empresa(
        nombre: "GreenTech Solutions",
        ubicacion: "Monterrey",
        giro: "Tecnología",
        rating: 3.3,
        comentarios: ["El ambiente laboral es tenso", "Compañeros de trabajo no deseables"]
    ),
    Empresa(
        nombre: "Cars Electric",
        ubicacion: "Monterrey",
        giro: "Manufactura",
        rating: 3.0,
        comentarios: ["Trato injusto", "Compañeros sexistas"]
    )
    
]
