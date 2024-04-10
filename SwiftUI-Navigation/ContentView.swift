//
//  ContentView.swift
//  SwiftUI-Navigation
//
//  Created by JimmyChao on 2024/4/10.
//

import SwiftUI

struct DetailView: View {
    let number: Int
    
    init(number: Int) {
        self.number = number
        print("Detail view created")
    }
    
    var body: some View {
        Text("This is a detail view with number \(number)")
    }
}


struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<100) { num in
                    NavigationLink("Select\(num)", value: num)
                }
            }
            .navigationDestination(for: Int.self) { selection in
                DetailView(number: selection)
            }
        }
    }
}

#Preview {
    ContentView()
}
