//
//  UIButon+Extension.swift
//  UtilityKit
//
//  Created by Darryl Weimers on 2020-10-25.
//

import UIKit


public extension UIButton {
    
    // TODO: fix this. The image is not perfecly align with text
    func alignTextBelow(spacing: CGFloat = 6.0) {
        guard let image = self.imageView?.image,
              let titleLabel = self.titleLabel,
              let titleText = titleLabel.text else {
            return
        }

        let titleSize = titleText.size(withAttributes: [
            NSAttributedString.Key.font: titleLabel.font
        ])

        titleEdgeInsets = UIEdgeInsets(top: spacing, left: -image.size.width, bottom: -image.size.height, right: 0)
        imageEdgeInsets = UIEdgeInsets(top: -(titleSize.height + spacing), left: 0, bottom: 0, right: -titleSize.width)
    }
    
    
    func makeFloatingButtonAction(image: UIImage, tintColor: UIColor = .white, backgroundColor: UIColor = .blue) {
            self.setImage(image, for: .normal)
            self.tintColor = tintColor
            self.backgroundColor = backgroundColor

            // drop shadow
            self.layer.shadowOpacity = 0.25
            self.layer.shadowRadius = 5
            self.layer.shadowOffset = CGSize(width: 0, height: 5) // move down by 5 points
    }
    
}
