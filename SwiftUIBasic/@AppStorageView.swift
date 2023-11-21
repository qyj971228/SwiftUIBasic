//
//  @AppStorageView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/12.
//

import SwiftUI

struct _AppStorageView: View {
    
    @State var username: String?
    
    var body: some View {
        VStack {
            Text(username ?? "nil")
            Text("Hello, World!")
        }
    }
}

#Preview {
    _AppStorageView()
}
