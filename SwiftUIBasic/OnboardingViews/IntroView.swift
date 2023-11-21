//
//  IntroView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/20.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var userSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(
                colors: [Color.purple, Color.blue],
                center: .topLeading,
                startRadius: 100,
                endRadius: UIScreen.main.bounds.height
            )
            .ignoresSafeArea()
            if userSignedIn {
                ProfileView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .top))
                    )
            } else {
                OnBoardingView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom))
                    )
            }
        }
        .animation(.spring, value: userSignedIn)
        // 注：当animation使用value参数时，必须将其放在外侧元素以避免动画失效
    }
}

#Preview {
    IntroView()
}
