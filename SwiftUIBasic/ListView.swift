//
//  ListView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct ListView: View {
    
    @State var fruits: [String] = [
        "apple", "banana"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundStyle(.orange)
                ) {
                    ForEach(fruits, id: \.self) { item in
                        Text("\(item)".capitalized)
                            .foregroundStyle(.secondary)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.red)
//                    .swipeActions (edge: .trailing, allowsFullSwipe: false) {
//                        Button(action: {
//                            
//                        }, label: {
//                            Label("Pin", systemImage: "pin")
//                        })
//                        .tint(.yellow)
//                        Button(action: {
//                        }, label: {
//                            Label("Delete", systemImage: "trash")
//                        })
//                        .tint(.red)
//                    }
                }
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { item in
                        Text("\(item)".capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
//            .listStyle(InsetListStyle())
            .navigationTitle("List")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    Button(
                        "Add",
                        action: { fruits.append("coconut") }
                    )
            )
            .accentColor(.red)
        }
    }
    
    func delete(atOffsets: IndexSet) {
        fruits.remove(atOffsets: atOffsets)
    }
    
    func move(fromOffsets: IndexSet, toOffset: Int) {
        fruits.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}

#Preview {
    ListView()
}
