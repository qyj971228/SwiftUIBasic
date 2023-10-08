//
//  Slider.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/7.
//

import SwiftUI

struct SliderView: View {
    
    @State var sliderValue: Double = 0.0
    @State var sliderChanged: String = "unchanged"
    
    var body: some View {
        Form {
            Text("\(sliderValue)")
            Text("\(sliderChanged)")
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    sliderChanged = "changed"
                },
                minimumValueLabel: Text("0"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("123")
                })
        }
    }
}

#Preview {
    SliderView()
}
