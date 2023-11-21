//
//  AlertView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/6.
//

import SwiftUI

struct AlertView: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    
    @State var alertTitle: String = "Title"
    @State var alertMessage: String = "message"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Button("alert1") {
                    showAlert.toggle()
                    alertTitle = "title1"
                }
                Button("alert2") {
                    showAlert.toggle()
                    alertTitle = "title2"
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert(title: alertTitle, message: alertMessage)
            })
        }
    }
    
    func getAlert(title: String, message: String) -> Alert {
        return Alert(
            title: Text("\(title)"),
            message: Text("\(message)"),
            primaryButton: .destructive(Text("Delete"), action: {
                backgroundColor = .red
            }),
            secondaryButton: .cancel()
//            dismissButton: .default(Text("OK"))
        )
    }
}

#Preview {
    AlertView()
}
