//
//  ViewController.swift
//  UINavigationController
//
//  Created by EasyFate on 30/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displaySecondButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "FirstVC"
        
        displaySecondButton = UIButton(type: .system)
        displaySecondButton.setTitle("SecondVC", for: .normal)
        displaySecondButton.sizeToFit()
        displaySecondButton.center = view.center
        displaySecondButton.addTarget(self, action: #selector(performDisplaySecond(paramSender:)), for: .touchUpInside)
        view.addSubview(displaySecondButton)
    }
    
    @objc func performDisplaySecond(paramSender: Any) {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }


}

