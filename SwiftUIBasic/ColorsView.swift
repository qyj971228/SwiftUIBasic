//
//  Colors.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                Color.primary
                Color(#colorLiteral(red: 0, green: 1, blue: 1, alpha: 1))
//                Color(UIColor.secondarySystemBackground)
//                Color("CustomColor")
            )
            .frame(width: 200, height: 100)
//            .shadow(radius: 10)
            .shadow(color: .brown, radius: 25, x: 0, y: 5)
    }
}

#Preview {
    ColorsView()
}
