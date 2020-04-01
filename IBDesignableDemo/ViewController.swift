//
//  ViewController.swift
//  IBDesignableDemo
//
//  Created by Zafar on 3/31/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(customView)
        
        NSLayoutConstraint.activate([
            customView.centerXAnchor
                .constraint(equalTo: self.view.centerXAnchor),
            customView.centerYAnchor
                .constraint(equalTo: self.view.centerYAnchor),
            customView.widthAnchor
                .constraint(equalToConstant: self.view.frame.width * 0.8),
            customView.heightAnchor
                .constraint(equalToConstant: 200),
        ])
    }
    
    let customView: CustomView = {
        let view = CustomView()
        view.color = .systemGreen
        view.cornerRadius = 20
        view.shadowRadius = 10
        view.shadowOpacity = 0.5
        view.shadowColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
}

