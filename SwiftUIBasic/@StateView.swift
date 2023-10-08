//
//  @StateView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct _StateView: View {
    
    @State var count: Int = 1
    @State var color: Color = .blue
    
    var body: some View {
        VStack (spacing: 20) {
            Text("\(count)")
                .foregroundStyle(.white)
                .frame(width: 100, height: 50)
                .background(color)
                .cornerRadius(10)
                .shadow(radius: 10)
            Button {
                withAnimation(.easeInOut) {
                    count += 1
                }
            } label: {
                Text("plus".capitalized)
                    .foregroundStyle(.white)
                    .frame(width: 100, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
            Button {
                withAnimation(.easeInOut) {
                    if color == .blue {
                        color = .red
                    } else {
                        color = .blue
                    }
                }
            } label: {
                Text("color".capitalized)
                    .foregroundStyle(.white)
                    .frame(width: 100, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
        }
    }
}

#Preview {
    _StateView()
}
