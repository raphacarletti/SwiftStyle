//
//  CustomAttributedStringViewController.swift
//  Example
//
//  Created by Raphael Carletti on 12/06/19.
//  Copyright © 2019 Raphael Carletti. All rights reserved.
//

import UIKit
import SwiftStyle
import Cartography

class CustomAttributedStringViewController: UIViewController {
    let exampleCases: [StringStyle] = [.boldRed, .underlineWithKern, .stroke, .backgroundColorWithStriketrough]

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .white
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        view.addSubview(stackView)
        constrain(view, stackView) { superView, stackView in
            stackView.topMargin == superView.topMargin
            stackView.leading == superView.leading
            stackView.trailing == superView.trailing
            stackView.bottom <= superView.bottom
        }
        let text = "Example"
        for example in exampleCases {
            let label = UILabel()
            label.textAlignment = .center
            label.attributedText = CustomAttributedString.create(string: text, style: example)
            stackView.addArrangedSubview(label)
        }
    }
}

extension StringStyle {
    static let boldRed = StringStyle().font(.boldSystemFont(ofSize: 18)).foregroundColor(.red)
    static let underlineWithKern = StringStyle().underlineStyle(1).underlineColor(.green).foregroundColor(.blue).kern(10)
    static let stroke = StringStyle().strokeWidth(1).strokeColor(.purple)
    static let backgroundColorWithStriketrough = StringStyle().backgroundColor(.magenta).strikethroughStyle(1).strikethroughColor(.orange)
}
