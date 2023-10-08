//
//  TextFieldView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/6.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("placeholder", text: $textFieldText)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(20))
                    .foregroundColor(.red)
                .font(.headline)
                
                Button {
                    saveText()
                } label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(20))
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .navigationTitle("text field")
            .padding(.horizontal, 20)
        }
    }
    
    func saveText() {
        dataArray.append(textFieldText)
    }
    
}

#Preview {
    TextFieldView()
}
