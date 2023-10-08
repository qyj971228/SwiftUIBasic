//
//  TextEditor.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/6.
//

import SwiftUI

struct TextEditorView: View {
    
    @State private var text = ""
        
    var body: some View {
        TextEditor(text: $text)
    }
}

#Preview {
    TextEditorView()
}
