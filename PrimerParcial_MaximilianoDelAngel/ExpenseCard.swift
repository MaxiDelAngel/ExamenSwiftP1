//
//  ExpenseCard.swift
//  PrimerParcial_MaximilianoDelAngel
//
//  Created by WIN603 on 08/10/25.
//

import SwiftUI

struct ExpenseCard: View {
    @State var nameexpense: String = ""
    @State var priceexpense: Double = 0
    @State var descriptionexpense: String = ""
    @State var dateexpense: String = ""
    @State var imageexpense: String = ""
    @State var colorexpnse: Color = .blue
    var body: some View {
        HStack(spacing: 12) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(colorexpnse)
                
                Image(systemName: imageexpense)
                    .foregroundColor(.white)
                    .font(.title2)
            }
            .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(nameexpense)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                    Spacer()
                    Text("JPY  \(priceexpense.formatted())")
                        .fontWeight(.semibold)
                        .lineLimit(1)
                }
                
                Text(descriptionexpense)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(dateexpense)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            
            Image(systemName: "chevron.right")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(red: 0.1, green: 0.1, blue: 0.11))
        .cornerRadius(20)
        .foregroundColor(.white)
        .padding(.horizontal)
        Divider()
            .background(Color.gray)
            .padding(.horizontal)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ExpenseCard()
    }
}
