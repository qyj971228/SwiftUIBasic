//
//  PopverView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct PopverView: View {
    
    @State var showPopver = false
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Button("open") {
                showPopver.toggle()
            }
            .frame(width: 100,height: 50)
            .foregroundColor(.red)
            .background(Color.white.cornerRadius(10))
            // #1 sheet
//            .sheet(isPresented: $showPopver, content: {
//                PopContentSheet()
//            })
            /**
                过渡适合元素出现或者删除时使用， 动画则适合在页面动作已有元素时使用
             */
            // #2 transition
//            if showPopver {
//                PopContentTransition(show: $showPopver)
//            }
            // #3 animation
            PopContentAnimation(show: $showPopver)
        }
    }
}

struct PopContentSheet: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Button("Close") {
                presentationMode.wrappedValue.dismiss()            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
        )
        .ignoresSafeArea()
        
    }
}

struct PopContentTransition: View {
    
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            Button("Close") {
                show.toggle()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height - 50)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
        )
        .ignoresSafeArea()
        .offset(y: 50)
        .transition(.asymmetric(
            insertion: .move(edge: .bottom),
            removal: .move(edge: .bottom)
        ))
        .animation(.spring)
        .zIndex(1.0)
    }
}

struct PopContentAnimation: View {
    
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            Button("Close") {
                show.toggle()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height - 50)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
        )
        .ignoresSafeArea()
        .zIndex(1.0)
        .offset(y: show ? 50 : UIScreen.main.bounds.height)
        .animation(.spring)
    }
}

#Preview {
    PopverView()
}
