//
//  StepperView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/7.
//

import SwiftUI

struct StepperView: View {
    
    @State var stepperValue: Int = 1
    
    var body: some View {
        Form {
            Stepper("stepper \(stepperValue)", value: $stepperValue)
            Stepper("stepper \(stepperValue)") {
                stepperValue += 10
            } onDecrement: {
                stepperValue -= 10
            }
        }
    }
}

#Preview {
    StepperView()
}
