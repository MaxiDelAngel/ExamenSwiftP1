//
//  ContentCard.swift
//  PrimerParcial_MaximilianoDelAngel
//
//  Created by WIN603 on 06/10/25.
//

import SwiftUI

struct ContentCard: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView(){
            VStack{
                
            }
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

#Preview {
    ContentCard()
}
