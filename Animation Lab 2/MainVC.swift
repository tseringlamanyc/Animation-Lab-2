//
//  ViewController.swift
//  Animation Lab 2
//
//  Created by Tsering Lama on 2/4/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    private var mainView = MainView()
    
    override func loadView() {
        view = mainView
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.bottomButtons[1].addTarget(self, action: #selector(animateAll(sender:)), for: .touchUpInside)
    }
    
    private func animateLinear() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
            self.mainView.imagesArr[0].transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
    }
    
    private func easeIn () {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseIn], animations: {
            self.mainView.imagesArr[1].transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
    }
    
    private func easeOut() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseOut], animations: {
            self.mainView.imagesArr[2].transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
    }
    
    private func easeInOut() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseInOut], animations: {
            self.mainView.imagesArr[3].transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
    }
    
    @objc
    private func animateAll(sender: UIButton) {
        animateLinear()
        easeIn()
        easeOut()
        easeInOut()
    }
    
}

