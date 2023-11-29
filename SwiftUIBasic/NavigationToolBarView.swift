//
//  NavigationToolBarView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/27.
//

import SwiftUI

struct NavigationToolBarView: View {
    
    @State var text: String = ""
    @State var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()
                ScrollView {
                    TextField("placeholder", text: $text)
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .topBarLeading) { Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Image(systemName: "house.fill")
                        Image(systemName: "gear")
                    }
                }
                ToolbarItem(placement: .keyboard) { Image(systemName: "gear")
                }
            }
//            .navigationBarHidden(true)
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleMenu {
                Button("screen1") {
                    paths.append("screen1")
                }
                Button("screen2") {
                    paths.append("screen2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("\(value)")
            }
        }
    }
}

#Preview {
    NavigationToolBarView()
}
