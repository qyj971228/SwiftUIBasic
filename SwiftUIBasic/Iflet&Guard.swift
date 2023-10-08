//
//  Iflet&Guard.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/7.
//

import SwiftUI

struct Iflet_Guard: View {
    
    @State var text: String = ""
    
    @State var isEmpty: Bool?
    
    var body: some View {
        VStack {
            Text("\(text)")
        }.onAppear(perform: {
            load2()
        })
    }
    
//    func load() {
//        if isEmpty == nil {
//            text = "nil"
//            return
//        }
//        if isEmpty == false {
//            text = "false"
//            return
//        }
//        text = "text"
//    }
    
    func load2() {
        guard isEmpty != nil else {
            text = "nil"
            return
        }
        guard isEmpty != false else {
            text = "false"
            return
        }
        text = "text"
    }
}

#Preview {
    Iflet_Guard()
}
