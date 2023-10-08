//
//  Images.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("CustomImage")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200)
//            .clipped()
            .clipShape(Circle())
    }
}

#Preview {
    Images()
}
