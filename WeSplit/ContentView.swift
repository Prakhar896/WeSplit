//
//  ContentView.swift
//  WeSplit
//
//  Created by Prakhar Trivedi on 11/11/21.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var tapCount = 0
//    @State private var name = ""
//    let students = ["Harry", "Hermione", "Ron"]
//    @State private var selectedStudent = "Harry"
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        //calculate total per person
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        var tipAmount = tipSelection / 100 * checkAmount
        var total = checkAmount + tipAmount
        var split = total / peopleCount
        return split
    }
    
    var body: some View {
//        Form {
//            Section {
//                Text("Hello, world!")
//            }
//            Section {
//                Text("Hello, world!")
//                Text("Hello, world!")
//            }
//        }
        
        
//        NavigationView {
//            Form {
//                Section {
//                    Text("Hello world!")
//                }
//            }
//            .navigationTitle("My worlds")
//            .navigationBarTitleDisplayMode(.inline)
//        }
        
        
//        Button("Tap count: \(tapCount)") {
//            tapCount += 1
//        }
        
        
//        Form {
//            TextField("Enter your name", text: $name)
//            Text("Hello world! \(name)")
//        }
        
//        Form {
//            ForEach(0..<100) {
//                Text("Row \($0)")
//            }
//        }
        
//        NavigationView {
//            Form {
//                Picker("Select your student", selection: $selectedStudent) {
//                    ForEach(students, id: \.self) {
//                        Text($0)
//                    }
//                }
//            }
//        }
        
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .padding()
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0)")
                        }
                    }
                } header: {
                    Text("Payment Amount")
                }
                
                Section {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                
                Section {
                    Text(totalPerPerson, format: .currency( code: Locale.current.currencyCode ?? "USD"))
                } header: {
                    Text("Amount Per Person")
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button ("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
