//
//  ViewThatFitsView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/29.
//

import SwiftUI

struct ViewThatFitsView: View {
    var uploadProgress: Double
    var body: some View {
        // 根据不同宽度选择不会被遮挡的元素显示
        ViewThatFits(in: .horizontal) {
            HStack {
                Text("\(uploadProgress.formatted(.percent))")
                ProgressView(value: uploadProgress)
                    .frame(width: 100)
            }
            ProgressView(value: uploadProgress)
                .frame(width: 100)
            Text("\(uploadProgress.formatted(.percent))")
        }
    }
}

struct ViewThatFitsView2: View {
    var body: some View {
        VStack {
            ViewThatFitsView(uploadProgress: 0.75)
                .frame(height: 100)
                .frame(maxWidth: 200)
                .overlay(
                    Rectangle()
                        .stroke()
                )
            ViewThatFitsView(uploadProgress: 0.75)
                .frame(height: 100)
                .frame(maxWidth: 100)
                .overlay(
                    Rectangle()
                        .stroke()
                )
            ViewThatFitsView(uploadProgress: 0.75)
                .frame(height: 100)
                .frame(maxWidth: 50)
                .overlay(
                    Rectangle()
                        .stroke()
                )
        }
        .frame(maxWidth: 200)
        .overlay(
            Rectangle()
                .stroke()
        )
    }
}

#Preview {
    ViewThatFitsView2()
}
