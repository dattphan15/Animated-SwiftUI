//
//  OnboardingView.swift
//  animated-swiftui
//
//  Created by phantom on 2023-05-20.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
    var body: some View {
        ZStack {
            RiveViewModel(fileName: "shapes").view()
                .ignoresSafeArea()
                .blur(radius: 30)
                .background(
                    Image("Spline")
                        .blur(radius: 50)
                        .offset(x: 200, y: 100)
            )
            
            RiveViewModel(fileName: "button").view()
                .frame(width: 236, height: 64)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
