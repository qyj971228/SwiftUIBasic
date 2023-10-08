//
//  SafeAreaView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct SafeAreaView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<10) { index in
                Text("Hello\(index)")
                    .foregroundStyle(.white)
                    .frame(height: 100, alignment: .top)
                    .frame(maxWidth: .infinity)
                    .background(.red)
            }
        }
        .safeAreaInset(
            edge: .top,
            content: {
                Color.clear.frame(height: 300)
            }
        )
        .safeAreaInset(
            edge: .bottom,
            content: {
                Color.clear.frame(height: 300)
            }
        )
        .ignoresSafeArea()
    }
}

#Preview {
    SafeAreaView()
}
