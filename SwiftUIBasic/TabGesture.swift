//
//  TabGesture.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/7.
//

import SwiftUI

struct TabGesture: View {
    
    @State var tabCount = 0
    
    var body: some View {
        Text("tap to add: \(tabCount)".capitalized)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                    .frame(width: 200, height: 50)
            )
            .foregroundStyle(.white)
            .onTapGesture {
                tabCount += 1
            }
    }
}

#Preview {
    TabGesture()
}
