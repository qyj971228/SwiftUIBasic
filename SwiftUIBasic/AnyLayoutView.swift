//
//  AnyLayoutView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/29.
//

import SwiftUI

struct AnyLayoutView: View {
    
    // 尺寸类别 用于判断当前屏幕紧凑类型
    // 见电子书收藏
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.dynamicTypeSize) var dynamicTypeSize // 动态字体
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(horizontalSizeClass.debugDescription)")
            Text("\(verticalSizeClass.debugDescription)")
            
            if horizontalSizeClass == .compact {
                VStack {
                    Text("A")
                    Text("B")
                    Text("C")
                }
            } else {
                HStack {
                    Text("A")
                    Text("B")
                    Text("C")
                }
            }
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("A")
                Text("B")
                Text("C")
            }
            
        }
    }
}

#Preview {
    AnyLayoutView()
}
