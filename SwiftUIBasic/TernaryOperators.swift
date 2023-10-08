//
//  TernaryOperators.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isLoading.toggle()
            } label: {
                Text((isLoading ? "loading..." : "loaded").capitalized)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 100)
                    .background(
                        Rectangle()
                            .fill(isLoading ? .red : .blue)
                            .frame(width: 200, height: 100)
                            .cornerRadius(20)
                            .shadow(radius: 20)
                    )
            }
        }
        .frame(width: 200, height: 100)
    }
}

#Preview {
    TernaryOperators()
}
