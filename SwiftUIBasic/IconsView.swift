//
//  Icons.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct IconsView: View {
    var body: some View {
        Image(
            systemName: "person.fill.badge.plus"
        )
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .font(.system(size: 200))
//        .foregroundStyle(.green)
        .frame(width: 200,  height: 100)
//        .clipped()
    }
}

#Preview {
    IconsView()
}
