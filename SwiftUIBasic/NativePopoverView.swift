//
//  NativePopoverView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/28.
//

import SwiftUI

struct NativePopoverView: View {
    
    @State private var showPopover = false
    @State private var points = ["⭐️", "⭐️⭐️", "⭐️⭐️⭐️"]
    
    var body: some View {
        ZStack {
            Color.clear.ignoresSafeArea()
            Button("打分") {
                showPopover.toggle()
            }
            .padding()
            .background(.red)
            .popover(
                isPresented: $showPopover,
                attachmentAnchor: .point(.trailing)
            ) {
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(points, id: \.self) { point in
                            Text("\(point)")
                                .padding()
                            if point != points.last {
                                Divider()
                            }
                        }
                    }
                    .padding(.horizontal, 10)
                    .presentationCompactAdaptation(.popover)
                }
            }
        }
    }
}

#Preview {
    NativePopoverView()
}
