//
//  ButtonStyleView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/21.
//

import SwiftUI

struct ButtonStyleView: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Button")
                .frame(width: 100, height: 100)
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
//        .buttonStyle(.plain)
        .buttonStyle(.borderedProminent)
        .controlSize(.regular)
        .buttonBorderShape(.roundedRectangle(radius: 50))
        .frame(width: 100, height: 100)
        
        Button("Button") {
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.bordered)
        .controlSize(.large)
        
        Button("Button") {
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.borderedProminent)
        .controlSize(.mini)
        
        Button("Button") {
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.borderless)
        .controlSize(.small)
    }
}

#Preview {
    ButtonStyleView()
}
