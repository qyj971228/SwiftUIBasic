//
//  StacksView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Rectangle()
                .fill(.red)
                .frame(width: 120, height: 120)
            Rectangle()
                .fill(.green)
                .frame(width: 110, height: 110)
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
        }
        HStack (alignment: .bottom, spacing: 0) {
            Rectangle()
                .fill(.red)
                .frame(width: 120, height: 120)
            Rectangle()
                .fill(.green)
                .frame(width: 110, height: 110)
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
        }
        ZStack (alignment: .bottom) {
            Rectangle()
                .fill(.red)
                .frame(width: 120, height: 120)
            Rectangle()
                .fill(.green)
                .frame(width: 110, height: 110)
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    StacksView()
}
