//
//  ToggleView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/6.
//

import SwiftUI

struct ToggleView: View {
    
    @State var toggleOn = false
    
    var body: some View {
        Toggle(
            isOn: $toggleOn, label: {
                Text("Label")
            }
        )
        .toggleStyle(SwitchToggleStyle(tint: .blue))
        .padding()
        .background(toggleOn ? Color.green.cornerRadius(10) : Color.red.cornerRadius(10))
        .padding()
        .animation(.easeInOut)
    }
}

#Preview {
    ToggleView()
}
