//
//  ListSwipeActionsView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/23.
//

import SwiftUI

struct ListSwipeActionsView: View {
    
    @State var fruits: [String] = [
        "apple", "banana"
    ]
    
    var body: some View {
        List {
            ForEach(0..<fruits.count, id: \.self) { index in
                Text(fruits[index].capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true
                    ) {
                        Button("取消") {
                            
                        }
                        .tint(.gray)
                        Button("删除") {
                            fruits.remove(at: index)
                        }
                        .tint(.red)
                        Button("收藏") {
                            
                        }
                        .tint(.yellow)
                    }
                    .swipeActions(
                        edge: .leading,
                        allowsFullSwipe: false
                    ) {
                        Button("标记") {
                            
                        }
                        .tint(.blue)
                    }
            }
//            .onDelete(perform: delete)
        }
    }
    
//    func delete(indexSet: IndexSet) {
//        fruits.remove(atOffsets: indexSet)
//    }
}

#Preview {
    ListSwipeActionsView()
}
