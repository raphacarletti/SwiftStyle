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
    enum Examples {
        case customAttributedString

        var text: String {
            switch self {
            case .customAttributedString:
                return "Custom Attributed String"
            }
        }

        var viewController: UIViewController {
            switch self {
            case .customAttributedString:
                return CustomAttributedStringViewController()
            }
        }
    }

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()

    let examples: [Examples] = [.customAttributedString]
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        let cell = UITableViewCell()
        cell.textLabel?.text = examples[indexPath.row].text
        return cell
    }
}

