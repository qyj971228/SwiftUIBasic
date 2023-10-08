//
//  AnimationsView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct AnimationsView: View {
    
    
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            Button {
                withAnimation(
                    Animation.easeInOut.repeatCount(3, autoreverses: true)) {
                    isLoading.toggle()
                }
            } label: {
                Text("button".capitalized)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 100)
                    .background(
                        Rectangle()
                            .frame(width: 200, height: 100)
                            .cornerRadius(20)
                            .shadow(radius: 20)
                    )
            }
            RoundedRectangle(cornerRadius: isLoading ? 20 : 10)
                .fill(isLoading ? .red : .blue)
                .frame(width: isLoading ? 50 : 100, height: isLoading ? 50 : 100)
                .rotationEffect(Angle(degrees: isLoading ? 180 : 0))
                .offset(y: isLoading ? 50 : 0)
//                .animation(Animation.easeInOut.repeatCount(3, autoreverses: true))
        }
        .frame(width: 200, height: 100)
    }
}

#Preview {
    AnimationsView()
}
