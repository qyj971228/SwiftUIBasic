//
//  TabView$PageTabViewStyle.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/7.
//

import SwiftUI

struct TabView_PageTabViewStyle: View {
    
    @State var selectedTab: Int = 1
    
    var body: some View {
        TabView (selection: $selectedTab) {
            VStack {
                Button {
                    selectedTab = 2
                } label: {
                    Text("to Settings".capitalized)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.blue)
                                .frame(width: 200, height: 100)
                        )
                }
                .tint(.white)
                .font(.title)
                .bold()
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Home")
            }
            .tag(1)
            Text("this is Settings")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(2)
        }
        .background(.red)
        .tabViewStyle(.page)
        .frame(height: 400)
    }
}

#Preview {
    TabView_PageTabViewStyle()
}
