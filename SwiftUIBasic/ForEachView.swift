//
//  ForEachView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct ForEachView: View {
    
    var data: [String] = ["hello", "hi"]
    var myString: String = "Hello"
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
//            ForEach(0..<10) { index in
//                HStack (spacing: 0) {
//                    Circle()
//                        .frame(width: 30)
//                        .overlay(
//                            Text("\(index)")
//                                .foregroundStyle(.white)
//                        )
//                    Text("hello \(index)".capitalized)
//                }
//            }
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachView()
}
