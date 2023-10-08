//
//  ShapesView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 20)
//            .trim(from: 0.2, to: 1)
//            .fill(.red)
//            .foregroundColor(.blue)
//            .stroke(.green)
//            .stroke(.green, lineWidth: 20)
//            .stroke(.orange,  style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
//            .stroke(.red, lineWidth: 30)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesView()
}
