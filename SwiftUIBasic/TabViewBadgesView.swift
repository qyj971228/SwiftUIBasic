//
//  BadgesView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/23.
//

import SwiftUI

struct BadgesView: View {
    var body: some View {
        TabView {
            Color
                .red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("hello")
                }
                .badge(10)
            Color
                .green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("hello")
                }
                .badge("new")
            Color
                .blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("hello")
                }
        }
    }
}

#Preview {
    BadgesView()
}
