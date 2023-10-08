//
//  LazyGridView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/5.
//

import SwiftUI

struct LazyGridView: View {
    
    var columns: [GridItem] = [
//        GridItem(.fixed(20), spacing: nil, alignment: nil),
//        GridItem(.fixed(40), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(minimum: 10, maximum: 40), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 10,
                    pinnedViews: [.sectionHeaders]
                ) {
                    Section(
                        header: 
                            Text("section 1".capitalized)
                            .font(.largeTitle)
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .background(.white)
                    ) {
                        ForEach(0..<30) { index in
                            ZStack {
                                Rectangle()
                                    .fill(.black)
                                    .frame(height: 80)
                                Rectangle()
                                    .fill(.red)
                                    .padding(5)
                            }
                        }
                    }
                    Section(
                        header:
                            Text("section 2".capitalized)
                            .font(.largeTitle)
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .background(.white)
                    ) {
                        ForEach(0..<30) { index in
                            ZStack {
                                Rectangle()
                                    .fill(.black)
                                    .frame(height: 80)
                                Rectangle()
                                    .fill(.red)
                                    .padding(5)
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("title".capitalized)
        }
    }
}

#Preview {
    LazyGridView()
}
