//
//  CustomLabel.swift
//  SwiftStyle
//
//  Created by Raphael Carletti on 21/06/19.
//  Copyright © 2019 Raphael Carletti. All rights reserved.
//

import UIKit

public class CustomLabel: UILabel {
    public init(labelStyle: LabelStyle, frame: CGRect = .zero) {
        super.init(frame: frame)
        // MARK: Label
        if let font = labelStyle.font {
            self.font = font
        }
        if let backgroundColor = labelStyle.backgroundColor {
            self.backgroundColor = backgroundColor
        }
        if let textColor = labelStyle.textColor {
            self.textColor = textColor
        }
        if let alpha = labelStyle.alpha {
            self.alpha = alpha
        }
        if let tintColor = labelStyle.tintColor {
            self.tintColor = tintColor
        }
        if let numberOfLines = labelStyle.numberOfLines {
            self.numberOfLines = numberOfLines
        }
        if let shadowColor = labelStyle.shadowColor {
            self.shadowColor = shadowColor
        }
        if let shadowOffset = labelStyle.shadowOffset {
            self.shadowOffset = shadowOffset
        }
        if let text = labelStyle.text {
            self.text = text
        }
        if let clipsToBounds = labelStyle.clipsToBounds {
            self.clipsToBounds = clipsToBounds
        }
        if let transform = labelStyle.transform {
            self.transform = transform
        }

        // MARK: Layer
        if let textAlignment = labelStyle.textAlignment {
            self.textAlignment = textAlignment
        }
        if let cornerRadius = labelStyle.cornerRadius {
            self.layer.cornerRadius = cornerRadius
        }
        if let borderColor = labelStyle.borderColor {
            self.layer.borderColor = borderColor
        }
        if let borderWidth = labelStyle.borderWidth {
            self.layer.borderWidth = borderWidth
        }
        if let masksToBounds = labelStyle.masksToBounds {
            self.layer.masksToBounds = masksToBounds
        }
        if #available(iOS 11.0, *), let maskedCorners = labelStyle.maskedCorners {
            self.layer.maskedCorners = maskedCorners
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
