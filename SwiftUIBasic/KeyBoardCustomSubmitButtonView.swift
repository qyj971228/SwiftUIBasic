//
//  KeyBoardCustomSubmitButtonView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/23.
//

import SwiftUI

struct KeyBoardCustomSubmitButtonView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.continue)
            .onSubmit {
                print("submit")
            }
            .keyboardType(.emailAddress)
    }
}

#Preview {
    KeyBoardCustomSubmitButtonView()
}
