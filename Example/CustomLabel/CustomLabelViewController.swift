//
//  CustomLabelViewController.swift
//  Example
//
//  Created by Raphael Carletti on 21/06/19.
//  Copyright © 2019 Raphael Carletti. All rights reserved.
//

import UIKit
import SwiftStyle
import Cartography

class CustomLabelViewController: UIViewController {
    let exampleCases: [LabelStyle] = [.redGreen, .cornerWithBorder, .bigBoldFont, .maskedCorners, .shadowAndTranform]

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
            stackView.leading >= superView.leading
            stackView.trailing <= superView.trailing
            stackView.centerX == superView.centerX
            stackView.bottom <= superView.bottom
        }
        for example in exampleCases {
            let label = CustomLabel(labelStyle: example)
            stackView.addArrangedSubview(label)
        }
    }
}

extension LabelStyle {
    static let redGreen = LabelStyle().backgroundColor(.red).text("Example 1").textColor(.green)
    static let cornerWithBorder = LabelStyle().text("Example 2").cornerRadius(8).borderWidth(2).borderColor(.green)
    static let bigBoldFont = LabelStyle().font(.systemFont(ofSize: 30, weight: .bold)).alpha(0.2).numberOfLines(0).text("Example 3\nExample 3\nExample 3")
    static let maskedCorners = LabelStyle().backgroundColor(.blue).textColor(.white).text("Example 4").maskedCorners([.layerMaxXMaxYCorner, .layerMinXMaxYCorner]).cornerRadius(8).clipsToBounds(true)
    static let shadowAndTranform = LabelStyle().textAlignment(.center).text("Example 5").transform(CGAffineTransform(rotationAngle: CGFloat.pi)).tintColor(.blue).shadowColor(.green).shadowOffset(CGSize(width: 10, height: 10))
}

