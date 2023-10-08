//
//  Gradients.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct GradientsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                // 线性渐变
//                LinearGradient(
//                    gradient: Gradient(colors: [.red, .blue, .green]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                )
                // 径向渐变
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .blue, .green]),
//                    center: .center,
//                    startRadius: 10,
//                    endRadius: 100
//                )
                // 角度渐变
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.green]),
                    center: .center,
                    angle: .degrees(90)
                )
            )
            .frame(width: 200, height: 100)
    }
}

#Preview {
    GradientsView()
}
