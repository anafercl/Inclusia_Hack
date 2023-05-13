//
//  MedidorView.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

struct MedidorView: View {
    @State private var current = 30.0
        @State private var minValue = 0.0
        @State private var maxValue = 100.0
        let gradient = Gradient(colors: [Color("Color1"), Color("Color4")])
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(
                cornerRadius: 20.0
            )
            .fill(Color("Color2"))
            .frame(width: .infinity, height: 250)
            
            VStack {
                Text("Brecha Salarial")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color6"))
                    .padding(.bottom, 45)
                
                Gauge(value: current, in: minValue...maxValue) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.black)
                } currentValueLabel: {
                    Text("\(Int(current))")
                        .foregroundColor(Color("Color6"))
                } minimumValueLabel: {
                    Text("\(Int(minValue))")
                        .foregroundColor(Color("Color6"))
                } maximumValueLabel: {
                    Text("\(Int(maxValue))")
                        .foregroundColor(Color("Color4"))
                }
                .gaugeStyle(.accessoryCircular)
                .tint(gradient)
                .scaleEffect(2)
                .padding(.bottom, 30)
                Text("Porcentaje basado en la media anual de salarios en Desarrollo de Software.")
                    .font(.headline)
                    .foregroundColor(Color("Color10"))
                    .multilineTextAlignment(.center)
            }
            
            
        }
        .frame(width: 350, height: 250)
    }
}

struct MedidorView_Previews: PreviewProvider {
    static var previews: some View {
        MedidorView()
    }
}
