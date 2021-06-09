# UtilityKit

![Platform](https://img.shields.io/cocoapods/p/lottie-ios.svg?style=flat)

This swift package contains UIKit and Foundation extensions to add features and/or simplify usage.

## Features 

- UIViewController extension
  - Add/remove child view controllers 
  - Add tap gesture to view to dismiss the keyboard
- UIColor extension
  - convenience initializer to create a color with RGB values: `init(r: CGFloat, g: CGFloat, b: CGFloat)`
  - convenience initializer to create a color with a hex value: `init(hexColor: UInt32 = 0xFFFFFF)`
  - convenience initializer to create a color with hex string`init?(hexColor: String = "#FFFFFF")`
- UIButton extension
  - Transforms a button to a *floating action button*
- UIFont extension
  - Make font bold 
  - Update font trait
- UIApplicaiton extension
  - Get top and bottom safe area inset
- Coordinator Pattern base classes

## Requirements

- iOS 14.1+
- Swift 5.0+

## Credits

- Darryl Weimers
