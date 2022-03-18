//
//  Constants.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 3/2/22.
//

import SwiftUI

extension Color{
    static let backGroundColor = Color("backGroundColor")
    static let buttonBackground = Color("buttonBackground")
    static let buttonText = Color("buttonText")
}
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
