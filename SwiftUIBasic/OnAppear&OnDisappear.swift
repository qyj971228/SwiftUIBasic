//
//  OnAppear&OnDisappear.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/7.
//

import SwiftUI

struct OnAppear_OnDisappear: View {
    
    @State var count = 1
    @State var count2 = 1
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<40) { index in
                    LazyVStack {
                        Text("\(index)")
                            .onAppear(perform: {
                                count += 1
                            })
                            .onDisappear(perform: {
                                count2 += 1
                            })
                    }
                }
                .background(.red)
                .navigationTitle("disappear\(count2) appear\(count)")
            }
            
        }
        
    }
}

#Preview {
    OnAppear_OnDisappear()
}
