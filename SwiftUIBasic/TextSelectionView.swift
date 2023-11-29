//
//  TextSelectionView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/21.
//

import SwiftUI

struct TextSelectionView: View {
    var body: some View {
        // 长按以获取文本控制，譬如复制与分享
        Text("hello")
            .textSelection(.enabled)
    }
}

#Preview {
    TextSelectionView()
}
