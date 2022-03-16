//
//  ViewController.swift
//  Werdd
//
//  Created by m on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    let helloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello there Hello there Hello there Hello there Hello there Hello there Hello there Hello there Hello there Hello there Hello there"
        label.textAlignment = .center
        label.backgroundColor = .blue
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        view.addSubview(helloLabel)

        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            helloLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
}
