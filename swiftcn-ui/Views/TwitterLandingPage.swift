//
//  TwitterLandingPage.swift
//  swiftcn-ui
//
//  Created by Vin on 13/04/24.
//

import SwiftUI

struct TwitterLandingPage: View {
    @State var inputtedString: String = ""
    @State var toggled: Bool = false
    @State var stepperValue: Int = 0
    @State var sliderValue: Double = 0
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 24) {
                Button("Press me!") {
                    
                }
                
                TextField("Textfield", text: $inputtedString)
                    .textFieldStyle(.roundedBorder)
                
                Toggle(toggled == false ? "I'm off!" : "I'm on!", isOn: $toggled)
                
                HStack {
                    Text("Stepper Value: \(stepperValue)")
                    
                    Stepper("", value: $stepperValue)
                }
                
                HStack {
                    Text("Slider Value: \(sliderValue.rounded())")
                    Spacer()
                    Slider(value: $sliderValue, in: 1...100)
                }
            }
            .padding()
            .navigationTitle("What is this!?")
        }
    }
}

#Preview {
    TwitterLandingPage()
}
