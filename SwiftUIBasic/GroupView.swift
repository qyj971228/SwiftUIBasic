//
//  GroupView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/28.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        VStack {
            // 只是用于在stack中分组使用
            Group {
                Text("Hello")
                Text("Hello")
            }
            .foregroundStyle(.blue)
            Text("Hello")
                .font(.caption)
                .foregroundStyle(.green)
        }
    }
}

#Preview {
    GroupView()
}
