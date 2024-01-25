//
//  KeyboardObserver.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//

import Foundation
import UIKit

//class KeyboardResponder: ObservableObject {
//    @Published var currentHeight: CGFloat = 0
//
//    var keyboardShow: NotificationCenter.Publisher
//    var keyboardHide: NotificationCenter.Publisher
//
//    init() {
//        keyboardShow = NotificationCenter.default.publisher(for: UIApplication.keyboardWillShowNotification)
//        keyboardHide = NotificationCenter.default.publisher(for: UIApplication.keyboardWillHideNotification)
//
//        keyboardShow
//            .compactMap { ($0.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height }
//            .assign(to: &$currentHeight)
//
//        keyboardHide
//            .map { _ in CGFloat(0) }
//            .assign(to: &$currentHeight)
//    }
//}
