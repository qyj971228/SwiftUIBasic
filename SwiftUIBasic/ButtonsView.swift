//
//  ButtonsView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct ButtonsView: View {
    
    @State var button: String = "Hello, World!"
    
    var body: some View {
        Button {
            if button == "Hello, World!" {
                button = "changed"
            } else {
                button = "Hello, World!"
            }
        } label: {
            Text("\(button)".capitalized)
                .foregroundStyle(.white)
                .padding(20)
                .background(
                    Color.blue.cornerRadius(10).shadow(radius: 10)
                )
        }
    }
}

#Preview {
    ButtonsView()
}
