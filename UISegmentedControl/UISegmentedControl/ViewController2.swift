//
//  ViewController2.swift
//  UISegmentedControl
//
//  Created by EasyFate on 27/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    let confirmLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        confirmLabel.text = "Your order is confirmed"
        confirmLabel.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 25)
        confirmLabel.frame = CGRect(x: 0, y: 0, width: 375, height: 40)
        confirmLabel.textAlignment = .center
        confirmLabel.center = view.center
        view.addSubview(confirmLabel)

       
    }
    
}
