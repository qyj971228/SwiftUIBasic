//
//  AnimationTimingView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct AnimationTimingView: View {
    
    @State var isAnimating: Bool = false
    let duration = 0.3
    
    var body: some View {
        Button {
            isAnimating.toggle()
        } label: {
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 350 : 100, height: 100)
                    .animation(.easeIn(duration: duration), value: isAnimating) // ios15之后建议开发者指定一个依赖，此以来改变时动画触发
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 350 : 100, height: 100)
                    .animation(.easeOut(duration: duration))
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 350 : 100, height: 100)
                    .animation(.easeInOut(duration: duration))
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 350 : 100, height: 100)
                    .animation(.linear(duration: duration))
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 350 : 100, height: 100)
                    .animation(.spring(response: duration, dampingFraction: 0.1))
            }
        }
    }
}

#Preview {
    AnimationTimingView()
}
