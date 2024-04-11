//
//  NavigateWithPath.swift
//  SwiftUI-Navigation
//
//  Created by JimmyChao on 2024/4/11.
//

import SwiftUI

struct NavigateWithPath: View {
    
    @State private var path: [Int] = []
    
    var body: some View {
        
        NavigationStack(path: $path) {
            Button("Tab to navigate") {
                path = [64, 32]
            }
            .navigationDestination(for: Int.self) { num in
                Text("New Detail View \(num)")
            }
        }
    }
}

#Preview {
    NavigateWithPath()
}
