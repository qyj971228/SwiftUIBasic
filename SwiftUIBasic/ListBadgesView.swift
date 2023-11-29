//
//  ListBadgesView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/23.
//

import SwiftUI

struct ListBadgesView: View {
    
    @State var fruits: [String] = [
        "apple", "banana"
    ]
    var body: some View {
        List {
            ForEach(0..<fruits.count, id: \.self) { index in
                Text("\(fruits[index])")
                    .badge(10)
            }
        }
        List {
            ForEach(0..<fruits.count, id: \.self) { index in
                Text("\(fruits[index])")
                    .badge("new message")
            }
        }
    }
}

#Preview {
    ListBadgesView()
}
