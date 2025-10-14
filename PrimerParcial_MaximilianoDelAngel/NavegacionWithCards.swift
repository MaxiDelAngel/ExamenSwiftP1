//
//  NavegacionWithCards.swift
//  PrimerParcial_MaximilianoDelAngel
//
//  Created by WIN603 on 06/10/25.
//

import SwiftUI

struct CardInfo: Identifiable {
    let id = UUID()
    let nombre: String
    let icon: String
    let dueño: String
    let num: String
    let color: Color
    var mastercard: Bool = false
    var visa: Bool = false
}

struct NavegacionWithCards: View {
    @State var clickteOnRing: Bool = true
    @State var favClick: Bool = false
    @State var tarjetaPreferida: String? = nil
    
    @State private var misTarjetas: [CardInfo] = [
        CardInfo(nombre: "NU", icon: "nu", dueño: "Maximiliano Del Angel", num: "1232 7678 1012", color: .purple, visa: true),
        CardInfo(nombre: "MercadoPago", icon: "mercapago", dueño: "Maximiliano Del Angel", num: "1334 2678 1012", color: .blue, visa: true),
        CardInfo(nombre: "Stori", icon: "storig", dueño: "Maximiliano Del Angel", num: "1334 2678 1015", color: .green, visa: true),
        CardInfo(nombre: "HeyBanco", icon: "heybanco", dueño: "Maximiliano Del Angel", num: "1334 2678 1023", color: .black, mastercard: true)
    ]
    
    var body: some View {
        NavigationStack(){
            ScrollView(.vertical){
                VStack(spacing:0){
                    Text("Tarjetas de crédito").font(.title)
                    Spacer()
                    GroupBox(label:
                                Label("Tarjetas de crédito", systemImage: "building.columns")
                    ) {
                        ScrollView(.vertical, showsIndicators: true) {
                            clickteOnRing ? Text("Tarjetas Activas") : Text("Tarjetas congeladas")
                        }
                        Toggle(isOn: $clickteOnRing) {
                            Text("Congeladas/Activas")
                        }
                    }
                    Spacer()
                    
                    VStack(spacing: 0) {
                        ForEach(Array(misTarjetas.enumerated()), id: \.element.id) { index, tarjetaActual in
                            NavigationLink(
                                destination: ContentCard(tarjeta: tarjetaActual, tarjetaPreferida: $tarjetaPreferida)
                            ) {
                                CardsNavegacion(
                                    nombre: tarjetaActual.nombre,
                                    icon: tarjetaActual.icon,
                                    dueño: tarjetaActual.dueño,
                                    num: tarjetaActual.num,
                                    color: tarjetaActual.color,
                                    visa: tarjetaActual.visa,
                                    mastercard: tarjetaActual.mastercard,
                                    onClick: $clickteOnRing,
                                    tarjetaPreferida: $tarjetaPreferida
                                )
                                .offset(y: CGFloat(-10 * index))
                                .zIndex(Double(-index))
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NavegacionWithCards()
}
