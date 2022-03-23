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
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()

    let nestedStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }()

    let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        return stackView
    }()

    let wordView: UIView = {
        let wordView = UIView()
        wordView.translatesAutoresizingMaskIntoConstraints = false
        return wordView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor =  UIColor(red: 0.92, green: 0.91, blue: 0.90, alpha: 1.00)

        view.addSubview(titleLabel)
        wordView.addSubview(nestedStackView)
        wordView.addSubview(mainStackView)
        view.addSubview(wordView)

        nestedStackView.addArrangedSubview(wordLabel)
        nestedStackView.addArrangedSubview(speechLabel)

        mainStackView.addArrangedSubview(nestedStackView)
        mainStackView.addArrangedSubview(definitionLabel)

        wordLabel.backgroundColor = .yellow
        speechLabel.backgroundColor = .red
        definitionLabel.backgroundColor = .blue

        nestedStackView.backgroundColor = .darkGray
        mainStackView.backgroundColor = .green

        wordView.backgroundColor = .purple

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 58),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),

            mainStackView.topAnchor.constraint(equalTo: wordView.topAnchor, constant: 20),
            mainStackView.leadingAnchor.constraint(equalTo: wordView.leadingAnchor, constant: 24),
            mainStackView.trailingAnchor.constraint(equalTo: wordView.trailingAnchor, constant: -24),

            wordView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23),
            wordView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            wordView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            wordView.heightAnchor.constraint(equalToConstant: 304)
        ])
    }
}
