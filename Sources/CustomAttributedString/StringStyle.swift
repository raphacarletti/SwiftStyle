//
//  StringStyle.swift
//  SwiftStyle
//
//  Created by Raphael Carletti on 12/06/19.
//  Copyright © 2019 Raphael Carletti. All rights reserved.
//

import UIKit

public class StringStyle {
    private(set) var font: UIFont?
    private(set) var foregroundColor: UIColor?
    private(set) var backgroundColor: UIColor?
    private(set) var paragraphStyle: NSParagraphStyle?
    private(set) var kern: Float?
    private(set) var strikethroughStyle: Int?
    private(set) var underlineStyle: Int?
    private(set) var strokeColor: UIColor?
    private(set) var strokeWidth: Float?
    private(set) var shadow: NSShadow?
    private(set) var textEffect: String?
    private(set) var attachment: NSTextAttachment?
    private(set) var link: URL?
    private(set) var baselineOffset: Float?
    private(set) var underlineColor: UIColor?
    private(set) var strikethroughColor: UIColor?
    private(set) var obliqueness: Float?
    private(set) var expansion: Float?
    private(set) var writingDirection: [Int]?
    private(set) var verticalGlyphForm: Bool?

    public init() { }

    public func foregroundColor(_ color: UIColor) -> Self {
        self.foregroundColor = color
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

    public func paragraphStyle(_ paragraphStyle: NSParagraphStyle) -> Self {
        self.paragraphStyle = paragraphStyle
        return self
    }

    public func kern(_ kern: Float) -> Self {
        self.kern = kern
        return self
    }

    public func strikethroughStyle(_ strikethroughStyle: Int) -> Self {
        self.strikethroughStyle = strikethroughStyle
        return self
    }

    public func underlineStyle(_ underlineStyle: Int) -> Self {
        self.underlineStyle = underlineStyle
        return self
    }

    public func strokeColor(_ strokeColor: UIColor) -> Self {
        self.strokeColor = strokeColor
        return self
    }

    public func strokeWidth(_ strokeWidth: Float) -> Self {
        self.strokeWidth = strokeWidth
        return self
    }

    public func shadow(_ shadow: NSShadow) -> Self {
        self.shadow = shadow
        return self
    }

    public func textEffect(_ textEffect: String) -> Self {
        self.textEffect = textEffect
        return self
    }

    public func attachment(_ attachment: NSTextAttachment) -> Self {
        self.attachment = attachment
        return self
    }

    public func link(_ link: String) -> Self {
        guard let linkUrl = URL(string: link) else {
            return self
        }
        self.link = linkUrl
        return self
    }

    public func link(_ link: URL) -> Self {
        self.link = link
        return self
    }

    public func baselineOffset(_ baselineOffset: Float) -> Self {
        self.baselineOffset = baselineOffset
        return self
    }

    public func underlineColor(_ underlineColor: UIColor) -> Self {
        self.underlineColor = underlineColor
        return self
    }

    public func strikethroughColor(_ strikethroughColor: UIColor) -> Self {
        self.strikethroughColor = strikethroughColor
        return self
    }

    public func obliqueness(_ obliqueness: Float) -> Self {
        self.obliqueness = obliqueness
        return self
    }

    public func expansion(_ expansion: Float) -> Self {
        self.expansion = expansion
        return self
    }

    public func writingDirection(_ writingDirection: [Int]) -> Self {
        self.writingDirection = writingDirection
        return self
    }

    public func verticalGlyphForm(_ verticalGlyphForm: Bool) -> Self {
        self.verticalGlyphForm = verticalGlyphForm
        return self
    }
}
