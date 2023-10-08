//
//  ExtractFuncs&Views.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct ExtractFuncs_Views: View {
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
            plusButton
            colorButton
        }
    }
    
    var plusButton: some View {
        Button {
            plusCount()
        } label: {
            Text("plus".capitalized)
                .foregroundStyle(.white)
                .frame(width: 100, height: 50)
                .background(.blue)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
    }
    
    var colorButton: some View {
        Button {
            changeColor()
        } label: {
            Text("color".capitalized)
                .foregroundStyle(.white)
                .frame(width: 100, height: 50)
                .background(.blue)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
    }
    
    func changeColor() {
        withAnimation(.easeInOut) {
            if color == .blue {
                color = .red
            } else {
                color = .blue
            }
        }
    }
    
    func plusCount() {
        withAnimation(.easeInOut) {
            count += 1
        }
    }
}

#Preview {
    ExtractFuncs_Views()
}
