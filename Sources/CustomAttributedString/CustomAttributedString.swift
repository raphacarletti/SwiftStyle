//
//  CustomAttributedString.swift
//  SwiftStyle
//
//  Created by Raphael Carletti on 12/06/19.
//  Copyright © 2019 Raphael Carletti. All rights reserved.
//

import Foundation

public class CustomAttributedString {
    public class func create(string: String, style: StringStyle) -> NSAttributedString {
        let str: CustomStringInterpolation = "\(string: string, style: style)"
        return str.value
    }
}
