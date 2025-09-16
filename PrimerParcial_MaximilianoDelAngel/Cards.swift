//
//  Cards.swift
//  PrimerParcial_MaximilianoDelAngel
//
//  Created by WIN603 on 15/09/25.
//

import SwiftUI

struct Cards: View {
    @State var nombre: String = ""
    @State var icon: String = ""
    @State var dueño: String = ""
    @State var num: String = "1234 5678 9012"
    @State var color: Color = .blue
    @State var bandera: Bool = true
    @State var visa: Bool = false
    @State var mastercard: Bool = false
    @State private var rotationAngle: Double = 0.0
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                HStack(spacing: 0){
                    Text(nombre)
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .foregroundStyle(.white)
                        .padding(.bottom, 10.0)
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding([.bottom], 10.0)
                        .padding(.leading, 10.0)
                }
                if(bandera){
                    Text(num)
                        .font(.system(size: 16, weight: .regular, design: .default)).foregroundStyle(.white).padding(.bottom, 1.0).fontWeight(.bold)
                    Text(dueño)
                        .font(.system(size: 14, weight: .regular, design: .default)).foregroundStyle(.white).padding(.bottom, 1.0)
                }
                Button(
                    action: {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            bandera.toggle()
                            rotationAngle += 360
                        }
                    })
                {
                    Image(systemName: "lock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(.white)
                    Text("Bloquear")
                        .font(.system(size: 14, weight: .regular, design: .default)).foregroundStyle(.white).padding(.horizontal, 5.0)
                    Spacer()
                    if(visa){
                        ZStack{
                            Circle().frame(width: 30, height: 30).foregroundStyle(.black)
                            Text("VISA").font(.system(size: 12, weight: .regular, design: .default)).foregroundStyle(.white)
                        }
                    }
                    if(mastercard){
                        ZStack{
                            VStack(spacing:0){
                                HStack(spacing:0){
                                    Circle().frame(width: 30, height: 30).foregroundStyle(.blue)
                                    Circle().frame(width: 30, height: 30).foregroundStyle(.orange).zIndex(1).offset(x:-10)
                                }
                                Text("mastercard").font(.system(size: 10, weight: .regular, design: .default)).foregroundStyle(.white).padding(.trailing, 6.0)
                            }
                        }
                    }
                }.padding(.all, 5.0).background(Color("primarycolor")).cornerRadius(10)
            }
            Spacer()
            Image("fc5176b1582ca87736c2b19dd6d20472f49bb4b96ed81f29da59865351ea0e06")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundStyle(.white)
        }
        .padding(.all, 20.0)
        .frame(maxWidth: .infinity)
        .frame(height: 150)
        .background(bandera ? color : .gray)
        .cornerRadius(10)
        .rotationEffect(Angle(degrees: rotationAngle))
    }
}


#Preview {
    Cards(nombre: "NU", icon: "nu", dueño: "Maximiliano Del Angel", num: "1234 5678 9012", color: .purple, visa: true)
}
