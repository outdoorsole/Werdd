//
//  ViewController.swift
//  Werdd
//
//  Created by m on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Werdd."
        label.backgroundColor = UIColor(red: 0.92, green: 0.91, blue: 0.90, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        return label
    }()

    let wordLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Programming"
        return label
    }()

    let speechLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "noun"
        return label
    }()

    let definitionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "creating a sequence of instructions to enable the computer to do something"
        return label
    }()

    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor =  UIColor(red: 0.92, green: 0.91, blue: 0.90, alpha: 1.00)

        view.addSubview(titleLabel)
        view.addSubview(stackView)

        stackView.addArrangedSubview(wordLabel)
        stackView.addArrangedSubview(speechLabel)
        stackView.addArrangedSubview(definitionLabel)

        stackView.backgroundColor = .darkGray
        wordLabel.backgroundColor = .yellow
        speechLabel.backgroundColor = .red
        definitionLabel.backgroundColor = .blue

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 58),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),

            stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23),
            stackView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23)
        ])
    }
}
