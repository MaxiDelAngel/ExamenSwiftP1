//
//  ContentCard.swift
//  PrimerParcial_MaximilianoDelAngel
//
//  Created by WIN603 on 06/10/25.
//

import SwiftUI

struct ContentCard: View {
    let tarjeta: CardInfo
    @State private var showingAddBalanceSheet = false
    @Binding var tarjetaPreferida: String?
    var esLaPreferida: Bool {
        return tarjeta.nombre == tarjetaPreferida
    }
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView(.vertical){
            VStack{
                CardStatic(nombre: tarjeta.nombre, icon: tarjeta.icon, dueño: tarjeta.dueño, color: tarjeta.color)
            }.padding()
            HStack(){
                VStack(alignment: .leading, spacing: 0){
                    Text("Saldo").font(.headline).foregroundStyle(Color.white).padding([.top, .leading]).padding(.bottom, 5.0)
                    Text("JPY 100,000").font(.title).foregroundStyle(Color.white).padding(.leading)
                    Spacer()
                }
                Spacer()
                Button(action: {showingAddBalanceSheet = true})
                {
                    Text("Añadir saldo").font(.headline).foregroundStyle(Color.black)
                }.padding(.all, 5.0).background(Color.white).cornerRadius(10).padding()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background(Color.gray.opacity(0.3))
            .cornerRadius(12)
            .padding()
            VStack(alignment: .leading, spacing: 0){
                Text("Transacciones recientes").font(.title3).foregroundStyle(.white).frame(maxWidth: .infinity,alignment: .leading)
            }.frame(maxWidth: .infinity).padding(.leading)
            VStack{
                ExpenseCard(
                    nameexpense: "Tampico Aeropuerto",
                    priceexpense: 100.00,
                    descriptionexpense: "Viaje de negocios",
                    dateexpense: "7 de abril del 2025",
                    imageexpense: "airplane.arrival",
                    colorexpnse: .blue
                )
                ExpenseCard(
                    nameexpense: "Ciudad de Mexico Aeropuerto",
                    priceexpense: 2500,
                    descriptionexpense: "Viaje de negocios",
                    dateexpense: "7 de septiembre del 2025",
                    imageexpense: "airplane.arrival",
                    colorexpnse: .blue
                )
                ExpenseCard(
                    nameexpense: "Monterrey Aeropuerto",
                    priceexpense: 100.00,
                    descriptionexpense: "Chequeo medico",
                    dateexpense: "7 de agosto del 2025",
                    imageexpense: "airplane.arrival",
                    colorexpnse: .blue
                )
                ExpenseCard(
                    nameexpense: "Tampico Aeropuerto",
                    priceexpense: 100.00,
                    descriptionexpense: "Viaje de negocios",
                    dateexpense: "7 de abril del 2025",
                    imageexpense: "airplane.arrival",
                    colorexpnse: .blue
                )
                ExpenseCard(
                    nameexpense: "Tampico Aeropuerto",
                    priceexpense: 100.00,
                    descriptionexpense: "Viaje de negocios",
                    dateexpense: "7 de abril del 2025",
                    imageexpense: "airplane.arrival",
                    colorexpnse: .blue
                )
                ExpenseCard(
                    nameexpense: "Tampico Aeropuerto",
                    priceexpense: 100.00,
                    descriptionexpense: "Viaje de negocios",
                    dateexpense: "7 de abril del 2025",
                    imageexpense: "airplane.arrival",
                    colorexpnse: .blue
                )
            }
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .cornerRadius(12)
        }
        .sheet(isPresented: $showingAddBalanceSheet) {
            AddBalanceView(tarjeta: tarjeta)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .navigationBarTitleDisplayMode(.large)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                }   label: {
                    Text("Listo").font(.headline).foregroundStyle(.white)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    dismiss()
                }   label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .tint(.white)
                        .frame(width: 30, height: 30)
                }
            }
        }
    }
}

// MODAL
struct AddBalanceView: View {
    let tarjeta: CardInfo
    @State private var amountToAdd: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Añadir Saldo")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                
                CardStatic(nombre: tarjeta.nombre, icon: tarjeta.icon, dueño: tarjeta.dueño, color: tarjeta.color)
                    .scaleEffect(0.8)
                    .shadow(radius: 5)
                
                TextField("Cantidad (ej: 500.00)", text: $amountToAdd)
                    .keyboardType(.decimalPad)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    print("Añadir \(amountToAdd) a la tarjeta \(tarjeta.nombre)")
                    dismiss()
                }) {
                    Text("Confirmar")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(tarjeta.color)
                        .cornerRadius(12)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Saldo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancelar") {
                        dismiss()
                    }
                }
            }
        }
    }
}
