//
//  ContentView.swift
//  WeSplit
//
//  Created by Prakhar Trivedi on 11/11/21.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var tapCount = 0
    @State private var name = ""
    
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
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello world! \(name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
