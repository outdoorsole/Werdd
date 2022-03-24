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
        label.font = UIFont(name: "Rubik-SemiBold", size: 36)
        return label
    }()

    let wordLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Programming"
        label.font = UIFont(name: "Rubik-Bold", size: 24)
        return label
    }()

    let speechLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "noun"
        label.font = UIFont(name: "Helvetica-Oblique", size: 12)
        return label
    }()

    let definitionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "creating a sequence of instructions to enable the computer to do something"
        label.font = UIFont(name: "Rubik-Light", size: 12)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()

    lazy var nestedStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .firstBaseline
        stackView.spacing = 5

        stackView.addArrangedSubview(wordLabel)
        stackView.addArrangedSubview(speechLabel)
        return stackView
    }()

    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 7
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally

        stackView.addArrangedSubview(nestedStackView)
        stackView.addArrangedSubview(definitionLabel)
        return stackView
    }()

    lazy var wordView: UIView = {
        let wordView = UIView()
        wordView.translatesAutoresizingMaskIntoConstraints = false
        wordView.layer.cornerRadius = 30
        wordView.backgroundColor = UIColor(named: "steelBlue")

        wordView.addSubview(nestedStackView)
        wordView.addSubview(mainStackView)
        return wordView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(named: "lightBeige")

        view.addSubview(titleLabel)
        view.addSubview(wordView)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 58),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),

            mainStackView.topAnchor.constraint(equalTo: wordView.topAnchor, constant: 20),
            mainStackView.leadingAnchor.constraint(equalTo: wordView.leadingAnchor, constant: 24),
            mainStackView.trailingAnchor.constraint(equalTo: wordView.trailingAnchor, constant: -24),

            definitionLabel.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor),

            wordView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23),
            wordView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            wordView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            wordView.heightAnchor.constraint(equalToConstant: 304)
        ])
    }
}
