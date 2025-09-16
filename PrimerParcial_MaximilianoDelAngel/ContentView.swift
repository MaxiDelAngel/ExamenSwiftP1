//
//  ContentView.swift
//  PrimerParcial_MaximilianoDelAngel
//
//  Created by WIN603 on 15/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing:0){
                Text("Tarjetas de crédito").font(.title)
                Spacer()
                Cards(nombre: "NU", icon: "nu", dueño: "Maximiliano Del Angel", num: "1232 7678 1012", color: .purple, visa: true)
                Cards(nombre: "MercadoPago", icon: "mercapago", dueño: "Maximiliano Del Angel",num: "1334 2678 1012", color: .blue, visa: true).zIndex(1).offset(y:-10)
                Cards(nombre: "Stori", icon: "storig", dueño: "Maximiliano Del Angel",num: "1334 2678 1015", color: .green, visa: true).zIndex(1).offset(y:-20)
                Cards(nombre: "HeyBanco", icon: "heybanco", dueño: "Maximiliano Del Angel",num: "1334 2678 1023", color: .black, mastercard: true).zIndex(1).offset(y:-30)
                Cards(nombre: "Banamex", icon: "banamex", dueño: "Maximiliano Del Angel",num: "1334 2678 1898", color: .red, visa: true).zIndex(1).offset(y:-40)
                Cards(nombre: "NU", icon: "nu", dueño: "Maximiliano Del Angel",num: "1334 2678 1523", color: .purple, visa: true).zIndex(1).offset(y:-50)
                Cards(nombre: "MercadoPago", icon: "mercapago", dueño: "Maximiliano Del Angel",num: "1334 2678 1111", color: .blue, visa: true).zIndex(1).offset(y:-60)
                Cards(nombre: "Stori", icon: "storig", dueño: "Maximiliano Del Angel",num: "1334 2678 6666", color: .green, visa: true).zIndex(1).offset(y:-70)
                Cards(nombre: "HeyBanco", icon: "heybanco", dueño: "Maximiliano Del Angel",num: "1334 2678 7777", color: .black, mastercard: true).zIndex(1).offset(y:-80)
                Cards(nombre: "Banamex", icon: "banamex", dueño: "Maximiliano Del Angel",num: "1334 2678 0000", color: .red, visa: true).zIndex(1).offset(y:-90)
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
