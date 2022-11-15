//
//  ContentView.swift
//  SegmentedControlWithEnumDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

enum TaskPriorityType: String, CaseIterable {
    case none
    case low
    case medium
    case high
}

struct ContentView: View {
    @State private var priorityType: TaskPriorityType = .none
    
    var body: some View {
        VStack {
            Picker("Priority", selection: $priorityType) {
                ForEach(TaskPriorityType.allCases, id: \.self) { value in
                    Text(value.rawValue.capitalized)
                }
            }
            .pickerStyle(.segmented)
            Text("Priority: \(priorityType.rawValue.capitalized)")
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
