//
//  NavigationStackView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/23.
//


//NavigationStack {
//    List(parks) { park in
//        NavigationLink(park.name, value: park)
//    }
//    .navigationDestination(for: Park.self) { park in
//        ParkDetails(park: park)
//    }
//}

import SwiftUI

struct NavigationStackView: View {
    
    let fruits: [String] = ["apple", "banana", "orange"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                Button("Super segue") {
                    // 绑定路径后 在路径中添加多个值 一次性将多个路径推入栈中
                    // 如果需要同时将多个页面推入栈中，则使用这种方式
                    stackPath.append(contentsOf: ["first page", "second page", "third page"])
//                    此处自动匹配了字符串跳转
//                  .navigationDestination(for: String.self) { value in
//                      MySecondScreenFruit(value: value)
//                  }
                }
                
                ForEach(0..<fruits.count, id: \.self) { index in
                    NavigationLink(value: fruits[index]) {
                        Text("Click me: \(fruits[index])")
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                }
                
                ForEach(0..<10) { index in
                    NavigationLink(value: index) {
                        Text("Click me: \(index)")
                    }
                    .navigationTitle("navigation bootcamp")
                    .frame(maxWidth: .infinity)
                    .padding()
                }
            }
            .navigationTitle("fruits")
            // 匹配NavigationLink(value: index)
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            // 匹配NavigationLink(value: fruits[index])
            .navigationDestination(for: String.self) { value in
                MySecondScreenFruit(value: value)
            }
        }
    }
}

struct MySecondScreen: View {
    let value: Int
    init(value: Int) {
        self.value = value
        print("init screen: \(value)")
    }
    var body: some View {
        Text("Screen\(value)")
    }
}
struct MySecondScreenFruit: View {
    let value: String
    init(value: String) {
        self.value = value
        print("init screen: \(value)")
    }
    var body: some View {
        Text("fruit: \(value)")
    }
}

#Preview {
    NavigationStackView()
}
