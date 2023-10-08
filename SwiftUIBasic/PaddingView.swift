//
//  PaddingView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
        VStack (spacing: 0) {
            Text("Hello")
            Text("Hello, World!")
                .padding(10)
                .background(.white)
                .frame(width: 100, height: 100)
                .background(.yellow)
                .padding(.horizontal, 20)
                .background(.blue)
                .padding(.vertical, 50)
                .background(.green)
                .padding(.all, 10)
                .background(.red)
                .padding(.bottom, 50)
            Text("Hello")
        }
        VStack (alignment: .leading, spacing: 0){
            Text("Title")
                .font(.title)
                .padding(.bottom, 20)
            Text("Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text ")
                .font(.footnote)
        }
        .padding(10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingView()
}
