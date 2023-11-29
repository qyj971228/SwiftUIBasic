//
//  SafeAreaInsetsView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/27.
//

import SwiftUI

struct SafeAreaInsetsView: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Title")
//            .overlay(alignment: .bottom) {
//                Text("bottom")
//                  .background(.yellow)
//            }
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
                Text("Bottom")
                    .padding()
                    .background(.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetsView()
}
