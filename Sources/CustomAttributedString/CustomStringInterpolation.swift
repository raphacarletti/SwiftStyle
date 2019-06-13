//
//  CustomStringInterpolation.swift
//  SwiftStyle
//
//  Created by Raphael Carletti on 12/06/19.
//  Copyright © 2019 Raphael Carletti. All rights reserved.
//

import Foundation

struct CustomStringInterpolation: ExpressibleByStringInterpolation {
    struct StringInterpolation: StringInterpolationProtocol {
        var output = NSMutableAttributedString()

        init(literalCapacity: Int, interpolationCount: Int) { }

        mutating func appendLiteral(_ literal: String) {
            let attributedString = NSAttributedString(string: literal)
            output.append(attributedString)
        }

        mutating func appendInterpolation(string: String, style: StringStyle) {
            var attributes: [NSAttributedString.Key: Any] = [:]
            if let font = style.font {
                attributes[.font] = font
            }
            if let foregroundColor = style.foregroundColor {
                attributes[.foregroundColor] = foregroundColor
            }
            if let backgroundColor = style.backgroundColor {
                attributes[.backgroundColor] = backgroundColor
            }
            if let paragraphStyle = style.paragraphStyle {
                attributes[.paragraphStyle] = paragraphStyle
            }
            if let kern = style.kern {
                attributes[.kern] = kern
            }
            if let strikethroughStyle = style.strikethroughStyle {
                attributes[.strikethroughStyle] = strikethroughStyle
            }
            if let underlineStyle = style.underlineStyle {
                attributes[.underlineStyle] = underlineStyle
            }
            if let strokeColor = style.strokeColor {
                attributes[.strokeColor] = strokeColor
            }
            if let strokeWidth = style.strokeWidth {
                attributes[.strokeWidth] = strokeWidth
            }
            if let shadow = style.shadow {
                attributes[.shadow] = shadow
            }
            if let textEffect = style.textEffect {
                attributes[.textEffect] = textEffect
            }
            if let attachment = style.attachment {
                attributes[.attachment] = attachment
            }
            if let link = style.link {
                attributes[.link] = link
            }
            if let baselineOffset = style.baselineOffset {
                attributes[.baselineOffset] = baselineOffset
            }
            if let underlineColor = style.underlineColor {
                attributes[.underlineColor] = underlineColor
            }
            if let strikethroughColor = style.strikethroughColor {
                attributes[.strikethroughColor] = strikethroughColor
            }
            if let obliqueness = style.obliqueness {
                attributes[.obliqueness] = obliqueness
            }
            if let expansion = style.expansion {
                attributes[.expansion] = expansion
            }
            if let writingDirection = style.writingDirection {
                attributes[.writingDirection] = writingDirection
            }
            if let verticalGlyphForm = style.verticalGlyphForm {
                let value: Int
                if verticalGlyphForm {
                    value = 1
                } else {
                    value = 0
                }
                attributes[.verticalGlyphForm] = value
            }
            let attributedString = NSAttributedString(string: string, attributes: attributes)
            output.append(attributedString)
        }
    }

    let value: NSAttributedString
    init(stringLiteral value: String) {
        self.value = NSAttributedString(string: value)
    }

    init(stringInterpolation: StringInterpolation) {
        self.value = stringInterpolation.output
    }
}
