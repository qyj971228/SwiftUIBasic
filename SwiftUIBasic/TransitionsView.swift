//
//  Transitions.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct TransitionsView: View {
    
    @State var showView = false
    
    var body: some View {
        ZStack(alignment: .bottom, content: {
            VStack {
                Button {
//                    withAnimation(.easeInOut) {
                        showView.toggle()
//                    }
                } label: {
                    Text("Button")
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .opacity(showView ? 1 : 0)
//                    .transition(.opacity.animation(.easeInOut))
//                    .transition(.move(edge: .bottom))
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .bottom)
                        )
                    )
                    .animation(.easeInOut)
            }
        })
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionsView()
}
