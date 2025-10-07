//
//  NavegacionWithCards.swift
//  PrimerParcial_MaximilianoDelAngel
//
//  Created by WIN603 on 06/10/25.
//

import SwiftUI

struct NavegacionWithCards: View {
    @State var clickteOnRing: Bool = true
    @State var favClick: Bool = false
    @State var tarjetaPreferida: String? = nil
    var body: some View {
        NavigationStack{
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
               
                    NavigationLink(
                        destination:
                                    ContentCard()
                    )
                    {
                        CardsNavegacion(nombre: "NU", icon: "nu", dueño: "Maximiliano Del Angel", num: "1232 7678 1012", color: .purple, visa: true, onClick: $clickteOnRing, tarjetaPreferida: $tarjetaPreferida)
                    }
                }
                /*
                CardsNavegacion(nombre: "MercadoPago", icon: "mercapago", dueño: "Maximiliano Del Angel",num: "1334 2678 1012", color: .blue, visa: true,onClick: $clickteOnRing, tarjetaPreferida: $tarjetaPreferida).zIndex(1).offset(y:-10)
                
                CardsNavegacion(nombre: "Stori", icon: "storig", dueño: "Maximiliano Del Angel",num: "1334 2678 1015", color: .green, visa: true,onClick: $clickteOnRing, tarjetaPreferida: $tarjetaPreferida).zIndex(1).offset(y:-20)
                
                CardsNavegacion(nombre: "HeyBanco", icon: "heybanco", dueño: "Maximiliano Del Angel",num: "1334 2678 1023", color: .black, mastercard: true,onClick: $clickteOnRing, tarjetaPreferida: $tarjetaPreferida).zIndex(1).offset(y:-30)
                
                CardsNavegacion(nombre: "Banamex", icon: "banamex", dueño: "Maximiliano Del Angel",num: "1334 2678 1898", color: .red, visa: true,onClick: $clickteOnRing, tarjetaPreferida: $tarjetaPreferida).zIndex(1).offset(y:-40)
                 */
            }.padding()
        }
    }
}

#Preview {
    NavegacionWithCards()
}
