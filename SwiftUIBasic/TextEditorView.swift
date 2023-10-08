//
//  TextEditor.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/6.
//

import SwiftUI

struct TextEditorView: View {
    
    @State private var text = "123123123123123123"
        
    var body: some View {
        TextEditor(text: $text)
            .colorMultiply(.gray)
            .cornerRadius(10)
            .frame(height: 200)
            .padding()
    }
}

#Preview {
    TextEditorView()
}
