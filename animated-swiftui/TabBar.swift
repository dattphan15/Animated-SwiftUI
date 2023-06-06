//
//  TabBar.swift
//  animated-swiftui
//
//  Created by phantom on 2023-06-05.
//

import SwiftUI
import RiveRuntime

struct TabBar: View {
    let icon = RiveViewModel(fileName: "icons", stateMachineName: "CHAT_Interactivity", artboardName: "CHAT")
    
    var body: some View {
        HStack {
            Button {
                try? icon.setInput("active", value: true)
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    try? icon.setInput("active", value: false)
                }
            } label: {
                icon.view()
            }
        }
        .background(Color("Background 2").opacity(0.8))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
