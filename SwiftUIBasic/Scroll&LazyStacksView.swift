//
//  ScrollView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct Scroll_LazyStacksView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<1000) { i in
                    ScrollView (.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<100) { j in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                    .frame(width: 300, height: 200)
                                    .shadow(radius: 10)
                                    .padding()
                                    .overlay(
                                        Text("\(i + 1)-\(j + 1)")
                                    )
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Scroll_LazyStacksView()
}
