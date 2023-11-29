//
//  NavigationView&Link.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct NavigationView_Link: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<199) { index in
                    NavigationLink("Hello") {
                        NavigationContent()
                    }
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                }
            }
            .frame(maxWidth: .infinity)
            .navigationTitle("title".capitalized)
            .navigationBarTitleDisplayMode(.automatic) // inline | large
//            .navigationBarBackButtonHidden(true) // 返回按钮隐藏
//            .navigationBarHidden(true) // 标题指定为空则自动隐藏
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                ,
                trailing:
                    NavigationLink(
                        destination: NavigationContent(),
                        label: {
                            Image(systemName: "gear")
                        }
                    )
            )
            
        }
    }
}

struct NavigationContent: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            NavigationLink("Next") {
                NavigationNextContent()
            }
            .navigationTitle("hello".capitalized)
            .navigationBarBackButtonHidden(true)
            Button("Back") {
                dismiss.callAsFunction()
            }
        }
    }
}

struct NavigationNextContent: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("End")
            Button("Back") {
                dismiss.callAsFunction()
            }
        }
    }
}

#Preview {
    NavigationView_Link()
}
