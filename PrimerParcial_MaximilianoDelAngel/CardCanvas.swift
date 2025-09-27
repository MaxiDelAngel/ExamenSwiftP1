//
//  CardCanvas.swift
//  PrimerParcial_MaximilianoDelAngel
//
//  Created by WIN603 on 26/09/25.
//

import SwiftUI

struct CardCanvas: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.all, 20.0)
            .frame(maxWidth: .infinity)
            .frame(height: 150)
    }
}
