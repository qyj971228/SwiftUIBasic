//
//  ExtractSubviews.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct _BindingView: View {
    
    @State var count: Int = 1
    @State var color: Color = .blue
    
    var body: some View {
        VStack (spacing: 20) {
            ShowView(count: $count, color: $color)
            PlusButtonView(count: $count)
            ColorChangeView(color: $color)
        }
    }
}

#Preview {
    _BindingView()
}
