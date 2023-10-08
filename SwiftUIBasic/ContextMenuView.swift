//
//  ContextMenuVuew.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/6.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swift")
                .font(.headline)
            Text("COntextMEnu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(20)
        .background(Color.red.cornerRadius(20))
        .contextMenu(ContextMenu(menuItems: {
            Text("Menu Item 1")
            Text("Menu Item 2")
            Text("Menu Item 3")
            Button("hello") {
                
            }
        }))
    }
}

#Preview {
    ContextMenuView()
}
