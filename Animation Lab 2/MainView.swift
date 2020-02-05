//
//  MainView.swift
//  Animation Lab 2
//
//  Created by Tsering Lama on 2/5/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    public lazy var animateButtons: [UIButton] = {
        var buttons = [UIButton]()
        let linearButton = UIButton()
        linearButton.tag = 0
        linearButton.backgroundColor = .systemRed
        let easeIn = UIButton()
        easeIn.tag = 1
        easeIn.backgroundColor = .systemRed
        let easeOut = UIButton()
        easeOut.backgroundColor = .systemRed
        easeOut.tag = 2
        let easeInOut = UIButton()
        easeInOut.backgroundColor = .systemRed
        easeInOut.tag = 3
        buttons.append(linearButton)
        buttons.append(easeIn)
        buttons.append(easeOut)
        buttons.append(easeInOut)
        return buttons
    }()
    
    public lazy var buttonStacks: UIStackView = {
        let stackViews = UIStackView(arrangedSubviews: animateButtons)
        return stackViews
    }()

    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupStacks()
    }
    
    private func setupStacks() {
        addSubview(buttonStacks)
        buttonStacks.translatesAutoresizingMaskIntoConstraints = false
        buttonStacks.axis = .horizontal
        buttonStacks.distribution = .fillEqually
        buttonStacks.alignment = .fill
        buttonStacks.spacing = 10
        NSLayoutConstraint.activate([
            buttonStacks.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            buttonStacks.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            buttonStacks.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            buttonStacks.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.035)
        ])
    }
    
}
