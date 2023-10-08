//
//  SwiftUIView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        HStack (spacing: 0) {
            Rectangle()
                .frame(width: 50, height: 50)
            Spacer()
                .frame(width: 25, height: 10)
                .background(.red)
            Rectangle()
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.red)
            Rectangle()
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.red)
            Rectangle()
                .frame(width: 50, height: 50)
        }
        .padding(.horizontal, 20)
        Spacer()
        HStack(spacing: 0) {
            Image(systemName: "xmark")
            Spacer()
            Image(systemName: "gear")
        }
        .font(.title)
        .padding(20)
    }
}

#Preview {
    SpacerView()
}
