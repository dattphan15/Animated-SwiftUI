//
//  VCard.swift
//  animated-swiftui
//
//  Created by phantom on 2023-06-25.
//

import SwiftUI

struct VCard: View {
    var course: Course
    
    var body: some View {
        VStack {
            Text(course.title)
                .customFont(.title2)
                .frame(maxWidth: 170, alignment: .leading)
            Text(course.subtitle)
                .customFont(.subheadline)
                .opacity(0.7)
            Text(course.caption.uppercased())
                .customFont(.footnote2)
        }
        .padding(30)
        .background(.linearGradient(colors: [course.color, course.color.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: course.color.opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: course.color.opacity(0.3), radius: 2, x: 0, y: 1)
        .overlay(course.image
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing))
    }
}

struct VCard_Previews: PreviewProvider {
    static var previews: some View {
        VCard(course: courses[0])
    }
}
