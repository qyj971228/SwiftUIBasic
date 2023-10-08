//
//  SheetsView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct SheetsView: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Button {
                showSheet.toggle()
            } label: {
                Text("Open")
                    .foregroundStyle(.red)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(20))
//                    .fullScreenCover(isPresented: $showSheet, content: {
//                        SheetContent()
//                    })
                    .sheet(isPresented: $showSheet, content: {
                        SheetContent()
                    })
            }
        }
    }
}

struct SheetContent: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Close")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(20))
                }
                Button {
                    showSheet.toggle()
                } label: {
                    Text("Open Another")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(20))
                }
            }
        }
        .sheet(isPresented: $showSheet, content: {
            Text("Hello")
        })
    }
}

#Preview {
    SheetsView()
}
