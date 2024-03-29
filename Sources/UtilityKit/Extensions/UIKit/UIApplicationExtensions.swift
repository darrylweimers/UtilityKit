//
//  UIApplication+Extension.swift
//  UtilityKit
//
//  Created by Darryl Weimers on 2020-10-31.
//

import UIKit

public extension UIApplication {
    
    static var safeAreaHeight: CGFloat? {
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.windows[0]
            return window.safeAreaLayoutGuide.layoutFrame.height
        }
        return nil
    }
    
    static var bottomSafeAreaInset: CGFloat? {
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.windows[0]
            return window.safeAreaInsets.bottom
        }
        return nil
    }
    
    static var topSafeAreaInset: CGFloat? {
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.windows[0]
            return window.safeAreaInsets.top
        }
        return nil
    }
}
