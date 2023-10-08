//
//  FrameView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 30))
            .frame(width: 150, height: 100)
            .background(.green)
//            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity)
//            .frame(maxHeight: .infinity)
            .frame(height: 300)
            .background(.red)
            .frame(width: 300)
            .background(.orange)
    }
}

#Preview {
    FrameView()
}
