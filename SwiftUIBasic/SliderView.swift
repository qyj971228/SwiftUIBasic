//
//  Slider.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/7.
//

import SwiftUI

struct SliderView: View {
    
    @State var sliderValue: Double = 0.0
    
    var body: some View {
        Slider(value: $sliderValue)
    }
}

#Preview {
    SliderView()
}
