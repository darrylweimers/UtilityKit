//
//  UIColor+Extensions.swift
//  UtilityKit
//
//  Created by Darryl Weimers on 2020-10-24.
//

import UIKit


public extension UIColor {
    
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r / 255, green: g / 255, blue: b / 255, alpha: 1)
        return
    }
    
    public convenience init(hexColor: UInt32) {
        let r, g, b: CGFloat
        r = CGFloat((hexColor & 0x00ff0000) >> 16) / 255
        g = CGFloat((hexColor & 0x0000ff00) >> 8) / 255
        b = CGFloat(hexColor & 0x000000ff) / 255
        self.init(red: r, green: g, blue: b, alpha: 1)
        return
    }

    public convenience init?(hexColor: String) {
        let totalCharactersInHexColor = 6
        let r, g, b: CGFloat

        if hexColor.hasPrefix("#") {
            let start = hexColor.index(hexColor.startIndex, offsetBy: 1)
            let hex = String(hexColor[start...])

            if hex.count == totalCharactersInHexColor {
                let scanner = Scanner(string: hex)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    g = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    b = CGFloat(hexNumber & 0x000000ff) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: 1)
                    return
                }
            }
        }

        return nil
    }
    
}
