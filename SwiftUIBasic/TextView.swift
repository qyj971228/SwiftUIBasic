//
//  Text.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello world this is??? Hello world this is???Hello world this is???Hello world this is???12331231321111111111111".uppercased().lowercased().capitalized)
//            .font(.title)
//            .fontWeight(.bold)
//            .fontWidth(.standard)
//            .fontDesign(.monospaced)
            .font(.system(size: 28, weight: .bold, design: .rounded))
            .underline() // 下划线
            .italic() // 斜体
            .strikethrough() // 删除线
            .multilineTextAlignment(.leading) // 对齐方式
            .baselineOffset(-20) // 行内填充位置及大小
            .foregroundStyle(.secondary)
            .frame(width: .infinity, height: 300, alignment: .top)
            .minimumScaleFactor(0.9) // 缩放字体以适应在frame内显示全部文本的最小字体
    }
}

#Preview {
    TextView()
}
