//
//  File.swift
//  
//
//  Created by Darryl Weimers on 2021-03-08.
//

import UIKit

extension UIFont {
    
    public func withTraits(traits: UIFontDescriptor.SymbolicTraits) -> UIFont {
        let descriptor = fontDescriptor.withSymbolicTraits(traits)!
        return UIFont(descriptor: descriptor, size: 0)
    }
    
    public func bold() -> UIFont {
        return withTraits(traits: .traitBold)
    }
}
