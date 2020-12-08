//
//  UIButon+Extension.swift
//  UtilityKit
//
//  Created by Darryl Weimers on 2020-10-25.
//

import UIKit


extension UIButton {
    
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

}
