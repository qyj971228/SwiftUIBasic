//
//  Background&OverlayView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct Background_OverlayView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.system(size: 30))
            .frame(width: 100,  height: 100)
            .background(
                //                .red
                //                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                
            )
            .frame(width: 110, height: 110)
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
            )
        Spacer()
        Circle()
            .fill(.red)
            .frame(width: 100, height: 100)
            .overlay(
                Text("1")
            )
            .background(
                .green
            )
        Spacer()
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height: 50),
                alignment: .leading
            )
            .background(
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150),
                alignment: .center
            )
        Spacer()
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient:
                                Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.red, radius: 20)
                    .overlay(
                        Circle()
                            .fill(.red)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("1")
                                    .foregroundStyle(.white)
                            )
                            .shadow(color: .red, radius: 10)
                        , alignment: .bottomTrailing
                    )
            )
        
    }
}

#Preview {
    Background_OverlayView()
}
