//
//  LabelStyle.swift
//  SwiftStyle
//
//  Created by Raphael Carletti on 21/06/19.
//  Copyright © 2019 Raphael Carletti. All rights reserved.
//

import UIKit

public class LabelStyle {
    private(set) var numberOfLines: Int?
    private(set) var tintColor: UIColor?
    private(set) var alpha: CGFloat?
    private(set) var font: UIFont?
    private(set) var textColor: UIColor?
    private(set) var backgroundColor: UIColor?
    private(set) var text: String?
    private(set) var shadowColor: UIColor?
    private(set) var shadowOffset: CGSize?
    private(set) var textAlignment: NSTextAlignment?
    private(set) var transform: CGAffineTransform?
    private(set) var clipsToBounds: Bool?
    private(set) var cornerRadius: CGFloat?
    private(set) var borderColor: CGColor?
    private(set) var borderWidth: CGFloat?
    private(set) var masksToBounds: Bool?
    private(set) var maskedCorners: CACornerMask?

    public init() { }

    public func numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }

    public func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }

    public func alpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }

    public func textColor(_ color: UIColor) -> Self {
        self.textColor = color
        return self
    }

    public func backgroundColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }

    public func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }

    public func text(_ text: String) -> Self {
        self.text = text
        return self
    }

    public func shadowColor(_ shadowColor: UIColor) -> Self {
        self.shadowColor = shadowColor
        return self
    }

    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        self.shadowOffset = shadowOffset
        return self
    }

    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }

    public func transform(_ transform: CGAffineTransform) -> Self {
        self.transform = transform
        return self
    }

    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }

    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.cornerRadius = cornerRadius
        return self
    }

    public func borderColor(_ borderColor: CGColor) -> Self {
        self.borderColor = borderColor
        return self
    }

    public func borderColor(_ borderColor: UIColor) -> Self {
        self.borderColor = borderColor.cgColor
        return self
    }

    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        self.borderWidth = borderWidth
        return self
    }

    public func masksToBounds(_ masksToBounds: Bool) -> Self {
        self.masksToBounds = masksToBounds
        return self
    }

    @available(iOS 11, *)
    public func maskedCorners(_ maskedCorners: CACornerMask) -> Self {
        self.maskedCorners = maskedCorners
        return self
    }
}

