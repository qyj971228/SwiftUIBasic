//
//  AnimationsiOS15.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/28.
//

import SwiftUI

struct AnimationsiOS15: View {
    
    @State private var animate1 = false
    @State private var animate2 = false
    
    var body: some View {
        ZStack {
            VStack {
                Button("action 1") {
                    animate1.toggle()
                }
                Button("action 2") {
                    animate2.toggle()
                }
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
            }
        }
        // 新的animation可以为不同值变化指定不同动画
        .animation(.easeIn, value: animate1)
        .animation(.spring(), value: animate2)
    }
}

#Preview {
    AnimationsiOS15()
}
