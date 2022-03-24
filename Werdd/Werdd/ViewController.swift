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
        label.backgroundColor = UIColor(red: 0.92, green: 0.91, blue: 0.90, alpha: 1.00)
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
        label.backgroundColor = UIColor(red: 0.21, green: 0.51, blue: 0.72, alpha: 1.00)
        return label
    }()

    let definitionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "creating a sequence of instructions to enable the computer to do something"
        label.font = UIFont(name: "Rubik-Light", size: 12)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.backgroundColor = UIColor(red: 0.21, green: 0.51, blue: 0.72, alpha: 1.00)
        return label
    }()

    let nestedStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .firstBaseline
        stackView.spacing = 5
        stackView.backgroundColor = UIColor(red: 0.21, green: 0.51, blue: 0.72, alpha: 1.00)
        return stackView
    }()

    let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 7
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.backgroundColor = UIColor(red: 0.21, green: 0.51, blue: 0.72, alpha: 1.00)
        return stackView
    }()

    let wordView: UIView = {
        let wordView = UIView()
        wordView.translatesAutoresizingMaskIntoConstraints = false
        wordView.backgroundColor = UIColor(red: 0.21, green: 0.51, blue: 0.72, alpha: 1.00)
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
