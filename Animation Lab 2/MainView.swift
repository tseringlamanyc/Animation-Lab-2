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
        linearButton.setTitle("Linear", for: .normal)
        linearButton.setTitleColor(.black, for: .normal)
        let easeIn = UIButton()
        easeIn.tag = 1
        easeIn.setTitle("EaseIn", for: .normal)
        easeIn.setTitleColor(.black, for: .normal)
        let easeOut = UIButton()
        easeOut.setTitle("EaseOut", for: .normal)
        easeOut.setTitleColor(.black, for: .normal)
        easeOut.tag = 2
        let easeInOut = UIButton()
        easeInOut.setTitle("EaseInOut", for: .normal)
        easeInOut.setTitleColor(.black, for: .normal)
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
    
    public lazy var imagesArr: [UIImageView] = {
        var allImages = [UIImageView]()
        let image1 = UIImageView()
        image1.image = UIImage(named: "yasuo")
        let image2 = UIImageView()
        image2.image = UIImage(named: "yasuo")
        let image3 = UIImageView()
        image3.image = UIImage(named: "yasuo")
        let image4 = UIImageView()
        image4.image = UIImage(named: "yasuo")
        allImages.append(image1)
        allImages.append(image2)
        allImages.append(image3)
        allImages.append(image4)
        return allImages
    }()
    
    public lazy var imageStacks: UIStackView = {
       let stackViews = UIStackView(arrangedSubviews: imagesArr)
        return stackViews
    }()
    
    public lazy var bottomButtons: [UIButton] = {
        var buttons = [UIButton]()
        let resetButton = UIButton()
        resetButton.tag = 0
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(.black, for: .normal)
        let animateButton = UIButton()
        animateButton.tag = 1
        animateButton.setTitle("Animate", for: .normal)
        animateButton.setTitleColor(.black, for: .normal)
        buttons.append(resetButton)
        buttons.append(animateButton)
        return buttons
    }()
    
    public lazy var bottomStacks: UIStackView = {
       let stackViews = UIStackView(arrangedSubviews: bottomButtons)
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
        setupImages()
        setupBottoms()
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
    
    private func setupImages () {
        addSubview(imageStacks)
        imageStacks.translatesAutoresizingMaskIntoConstraints = false
        imageStacks.axis = .horizontal
        imageStacks.distribution = .fillEqually
        imageStacks.alignment = .fill
        imageStacks.spacing = 10
        imageStacks.backgroundColor = .systemRed
        NSLayoutConstraint.activate([
            imageStacks.topAnchor.constraint(equalTo: buttonStacks.bottomAnchor, constant: 10),
            imageStacks.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            imageStacks.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            imageStacks.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15)
        ])
    }
    
    private func setupBottoms() {
        addSubview(bottomStacks)
        bottomStacks.translatesAutoresizingMaskIntoConstraints = false
        bottomStacks.axis = .horizontal
        bottomStacks.distribution = .fillEqually
        bottomStacks.alignment = .fill
        bottomStacks.spacing = 200
        NSLayoutConstraint.activate([
            bottomStacks.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            bottomStacks.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 10),
            bottomStacks.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
    }
}
