//
//  SignInView.swift
//  animated-swiftui
//
//  Created by phantom on 2023-05-23.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Text("Sign In")
                .customFont(.largeTitle)
            Text("Sample text")
                .customFont(.headline)
            
            VStack {
                Text("Email")
                    .customFont(.subheadline)
                .foregroundColor(.secondary)
                TextField("", text: $email)
                    .customTextField()
            }
            
            Divider()
            
            Text("Sign up with Email, Apple or Google")
                .customFont(.subheadline)
                .foregroundColor(.secondary)
            
            HStack {
                Image("Logo Email")
                Spacer()
                Image("Logo Apple")
                Spacer()
                Image("Logo Google")
            }
        }
        .padding(30)
        .background(.regularMaterial)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 30, x: 0, y: 30)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(.linearGradient(colors:
                    [.white.opacity(0.8), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
            )
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
