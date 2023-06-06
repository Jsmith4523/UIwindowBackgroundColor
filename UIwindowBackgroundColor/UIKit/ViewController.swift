//
//  ViewController.swift
//  UIwindowBackgroundColor
//
//  Created by Jaylen Smith on 6/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Present Modally", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .systemBlue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .secondarySystemBackground
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(presentModalView), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 45),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func presentModalView() {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        
        self.present(vc, animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}

