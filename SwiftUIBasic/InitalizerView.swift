//
//  InitalizerView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct InitalizerView: View {
    
    var backgroundColor: Color = .red
    var count: Int = 0
    var title: String = "Apples"
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        switch fruit {
            case .apple:
                self.backgroundColor = .red
                self.title = "Apples"
                break
            case .orange:
                self.backgroundColor = .orange
                self.title = "Oranges"
                break
        }
    }
    
    var body: some View {
        VStack (spacing: 15) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text("\(title)")
                .foregroundStyle(.white)
                .font(.headline)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitalizerView(count: 10, fruit: .orange)
        InitalizerView(count: 100, fruit: .apple)
    }
}
