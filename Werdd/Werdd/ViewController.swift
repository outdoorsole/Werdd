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
        label.text = "Werdd."
        label.textAlignment = .center
        label.backgroundColor = UIColor(red: 0.92, green: 0.91, blue: 0.90, alpha: 1.00)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()

    let submitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .green
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor =  UIColor(red: 0.92, green: 0.91, blue: 0.90, alpha: 1.00)

        view.addSubview(helloLabel)
        view.addSubview(submitButton)

        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            helloLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            helloLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),

            submitButton.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 20),
            submitButton.leadingAnchor.constraint(equalTo: helloLabel.leadingAnchor, constant: 40),
            submitButton.trailingAnchor.constraint(equalTo: helloLabel.trailingAnchor, constant: -40),
            submitButton.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
