//
//  KeyboardAdaptive.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//

import Foundation
import SwiftUI

struct KeyboardAdaptive: ViewModifier {
    @State private var keyboardHeight: CGFloat = 0

    func body(content: Content) -> some View {
        content
            .padding(.bottom, keyboardHeight)
            .onReceive(Publishers.keyboardHeight) { self.keyboardHeight = $0 }
    }
}
