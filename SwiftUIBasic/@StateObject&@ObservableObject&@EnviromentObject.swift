//
//  @StateObject&@ObservableObject.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/7.
//

import SwiftUI

class FruitModel: Identifiable {
    var name: String
    var count: Int
    let id: UUID
    init(name: String = "default fruit name", count: Int = 0) {
        self.name = name
        self.count = count
        self.id = UUID()
    }
}

class DeepObject: Identifiable {
    let id: UUID
    var fruit: FruitModel
    init(fruit: FruitModel = FruitModel()) {
        self.id = UUID()
        self.fruit = fruit
    }
}

class FruitArrayModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var simpleArray: [Int] = [1, 2, 3]
    @Published var deepObject: DeepObject = DeepObject()
    @Published var initTimes = 0
    init() {
        dataInit()
    }
    func dataInit() {
        initTimes += 1
        let apple = FruitModel(name: "apple", count: 0)
        let banana = FruitModel(name: "banana", count: 0)
        let orange = FruitModel(name: "orange", count: 0)
        fruitArray.append(apple)
        fruitArray.append(banana)
        fruitArray.append(orange)
    }
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    func plusFruit(index: Int) {
        let fruit = fruitArray[index]
        fruit.count += 1
        fruitArray[index] = fruit
    }
    func plusSimpleArray(index: Int) {
        simpleArray[index] += 1
    }
    func plusDeepObject() {
        let deepObject = self.deepObject
        deepObject.fruit.count += 1
        self.deepObject = deepObject
    }
}

struct _StateObject__ObservableObject: View {
    
    @StateObject var fruitArrayModel: FruitArrayModel = FruitArrayModel()
    
    var body: some View {
        NavigationView {
            List {
                Text("init times \(fruitArrayModel.initTimes)")
                Section (header: Text("Object in Array")) {
                    ForEach(0..<fruitArrayModel.fruitArray.count, id: \.self) { index in
                        Button {
                            fruitArrayModel.plusFruit(index: index)
                        } label: {
                            HStack {
                                Text("\(fruitArrayModel.fruitArray[index].name)")
                                Text("\(fruitArrayModel.fruitArray[index].count)")
                            }
                        }
                    }
                    .onDelete(perform: fruitArrayModel.deleteFruit)
                }
                
                Section (header: Text("int in array")) {
                    ForEach(0..<fruitArrayModel.simpleArray.count, id: \.self) { index in
                        Button {
                            fruitArrayModel.plusSimpleArray(index: index)
                        } label: {
                            HStack {
                                Text("\(fruitArrayModel.simpleArray[index])")
                            }
                        }
                    }
                }
                
                Section (header: Text("deep Object")) {
                    Button {
                        fruitArrayModel.plusDeepObject()
                    } label: {
                        HStack {
                            Text("\(fruitArrayModel.deepObject.fruit.name)")
                            Text("\(fruitArrayModel.deepObject.fruit.count)")
                        }
                    }
                }
            }
            .navigationTitle("List View")
            .navigationBarItems(trailing:
                NavigationLink(
                    destination: _StateObject__ObservableObject_OtherView(fruitArrayModel: fruitArrayModel),
                    label: {
                        Image(systemName: "chevron.right")
                    }
                )
            )
        }
        .environmentObject(fruitArrayModel)
    }
}

struct _StateObject__ObservableObject_OtherView: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitArrayModel: FruitArrayModel
    
    var body: some View {
        ForEach(0..<fruitArrayModel.fruitArray.count, id: \.self){ index in
            HStack {
                Text("\(fruitArrayModel.fruitArray[index].name)")
                Text("\(fruitArrayModel.fruitArray[index].count)")
            }
        }
        _StateObject__ObservableObject_EnviromentObjectView()
        Button {
            dismiss()
        } label: {
            Text("back")
        }
    }
}

struct _StateObject__ObservableObject_EnviromentObjectView: View {
    
    @EnvironmentObject var fruitArrayModel: FruitArrayModel
    
    var body: some View {
        Text("\(fruitArrayModel.fruitArray[0].name)")
    }
}

#Preview {
    _StateObject__ObservableObject()
}
