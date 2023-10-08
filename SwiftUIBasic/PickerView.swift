//
//  PickerView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/10/6.
//

import SwiftUI

struct PickerView: View {
    
    struct selectionType {
        var text: String
        var tag: Int
    }
    
    @State var selection: Int = 1
    @State var selections: [selectionType] = [
        selectionType(text: "11", tag: 1),
        selectionType(text: "22", tag: 2),
        selectionType(text: "33", tag: 3),
    ]
    
    @State var colorPicker: Color = .red
    
    @State var datePicker: Date = Date()
    let startDate: Date = Calendar.current.date(from: DateComponents(year: 2023, month: 10)) ?? Date()
    let endDate: Date = Date()
    
    var dateFomatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        Form {
            Picker (
                "picker",
                selection: $selection,
//                label:
//                    HStack {
//                        Text("Picker")
//                        Text("\(selection)")
//                    }
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .padding(.horizontal)
//                    .background(.blue)
//                    .cornerRadius(10)
//                    .shadow(radius: 10)
//                ,
                content: {
                    ForEach(0..<selections.count, id: \.self) { index in
                        Text("\(selections[index].text)").tag(index + 1)
                    }
                }
            )
    //        .pickerStyle(.segmented)
            .pickerStyle(MenuPickerStyle())
            
            ColorPicker(
                "colorpicker",
                selection: $colorPicker
            )
            
            
            Text("datepicker\(datePicker)")
            Text("datepicker\(datePicker.description)")
            Text("datepicker\(dateFomatter.string(from: datePicker))")
            DatePicker(
                "datepicker",
                selection: $datePicker,
                in: startDate...endDate
//                displayedComponents: [.date, .hourAndMinute]
            )
//                .datePickerStyle(.wheel)
        }
    }
}

#Preview {
    PickerView()
}
