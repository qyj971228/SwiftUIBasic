//
//  FocusStateView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/23.
//

import SwiftUI

struct FocusStateView: View {
    
    enum OnboardingField {
        case usr
        case psw
    }
    
    @State private var text: String = ""
//    @FocusState private var usernameInFocus: Bool
    @State private var psw: String = ""
//    @FocusState private var pswInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $text)
                .focused($fieldInFocus, equals: .usr)
//                .focused($usernameInFocus)
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .submitLabel(.continue)
            TextField("Add your psw here...", text: $psw)
                .focused($fieldInFocus, equals: .psw)
//                .focused($pswInFocus)
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .submitLabel(.send)
//            Button("toggle focus state") {
//                usernameInFocus.toggle()
//            }
            Button("Sign up 🚀") {
                let usrValid = !text.isEmpty
                let pswValid = !psw.isEmpty
                if (usrValid && pswValid) {
                    print("sign up")
                } else if !usrValid {
//                    usernameInFocus = true
//                    pswInFocus = false
                    fieldInFocus = .usr
                } else if !pswValid {
//                    usernameInFocus = false
//                    pswInFocus = true
                    fieldInFocus = .psw
                }
            }
        }
        .padding(.horizontal, 40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateView()
}
