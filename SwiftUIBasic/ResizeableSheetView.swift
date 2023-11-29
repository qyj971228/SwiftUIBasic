//
//  ResizeableSheetView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/27.
//

import SwiftUI

struct ResizeableSheetView: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .medium
    
    var body: some View {
        Button("click me") {
            showSheet.toggle()
            detents = .medium
        }
        .sheet(isPresented: $showSheet) {
            SheetView(show: $showSheet, detents: $detents)
        }
    }
}

struct SheetView: View {
    
    @Binding var show: Bool
    @Binding var detents: PresentationDetent
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.red.ignoresSafeArea()
                Text("hello")
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        if detents != .large {
                            Button("full screen") {
                                detents = .large
                            }
                        } else {
                            Button("half screen") {
                                detents = .medium
                            }
                        }
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Button("close") {
                            show.toggle()
                        }
                    }
                }
            }
        }
        // 默认显示30%高度，可拖拽至半屏全屏
//                .presentationDetents([.fraction(0.3), .height(400), .medium, .large])
        .presentationDetents([.medium, .large], selection: $detents)
        // 是否显示拖动指示器
        .presentationDragIndicator(.visible)
        // 禁止以交互的方式关闭工作表，仍可以通过改变绑定变量关闭，通常用来防止用户误操作关闭
        .interactiveDismissDisabled()
    }
}

#Preview {
    ResizeableSheetView()
}
