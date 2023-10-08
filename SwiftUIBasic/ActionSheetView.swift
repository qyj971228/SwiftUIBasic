//
//  ActionSheetView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/6.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button ("Click") {
            showActionSheet.toggle()
        }
        .actionSheet(
            isPresented: $showActionSheet,
            content: actionSheet
        )
    }
    
    func actionSheet() -> ActionSheet {
        
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("destructive"))
        let button3: ActionSheet.Button = .cancel(Text("cancel"))
        
        return ActionSheet(
            title: Text("this is the title").bold(),
            message: Text("This is the message"),
            buttons: [button1, button1, button2, button3]
        )
    }
}

#Preview {
    ActionSheetView()
}
