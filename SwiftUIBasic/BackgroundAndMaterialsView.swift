//
//  BackgroundAndMaterialsView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/21.
//

import SwiftUI

struct BackgroundAndMaterialsView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("HI")
            }
            .frame(height: 400)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("CustomImage")
        )
    }
}

#Preview {
    BackgroundAndMaterialsView()
}
