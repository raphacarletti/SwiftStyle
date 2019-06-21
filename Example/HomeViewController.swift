//
//  ViewController.swift
//  Example
//
//  Created by Raphael Carletti on 12/06/19.
//  Copyright © 2019 Raphael Carletti. All rights reserved.
//

import UIKit
import Cartography

class HomeViewController: UIViewController {
    enum Examples: CaseIterable {
        case customAttributedString
        case customLabel

        var text: String {
            switch self {
            case .customAttributedString:
                return "Custom Attributed String"
            case .customLabel:
                return "Custom Label"
            }
        }

        var viewController: UIViewController {
            switch self {
            case .customAttributedString:
                return CustomAttributedStringViewController()
            case .customLabel:
                return CustomLabelViewController()
            }
        }
    }

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableView.self, forCellReuseIdentifier: "cell")
        return tableView
    }()

    let examples: [Examples] = Examples.allCases
    
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
        view.addSubview(tableView)
        constrain(view, tableView) { superView, tableView in
            tableView.edges == superView.edges
        }
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(examples[indexPath.row].viewController, animated: true)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return examples.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomTableView else {
            return UITableViewCell()
        }
        cell.labelText = examples[indexPath.row].text
        return cell
    }
}

private class CustomTableView: UITableViewCell {
    lazy var label: UILabel = {
        let label = UILabel()
        return label
    }()
    var labelText: String = "" {
        willSet {
            label.text = newValue
        }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(label)
        constrain(self, label) { superView, label in
            label.top == superView.top + 16
            label.leading == superView.leading + 16
            label.trailing == superView.trailing - 16
            label.bottom == superView.bottom - 16

        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

