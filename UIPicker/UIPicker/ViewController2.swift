//
//  ViewController2.swift
//  UIPicker
//
//  Created by EasyFate on 22/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var yearLol: String!
    
    let cancelButton = UIButton()
    let yearLabel = UILabel()
    let leapLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(yearLol)
        
        //Cancel Button
        cancelButton.frame = CGRect(x: 115, y: 408, width: 145, height: 43)
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(UIColor.black, for: .normal)
        cancelButton.layer.borderColor = UIColor.black.cgColor
        cancelButton.layer.cornerRadius = 5
        cancelButton.layer.borderWidth = 1
        
        //Year Label
        yearLabel.frame = CGRect(x: 0, y: 68, width: 375, height: 63)
        yearLabel.textAlignment = .center
        yearLabel.text = yearLol
        
        //Leap year
        leapLabel.frame = CGRect(x: 0, y: 132, width: 375, height: 200)
        leapLabel.textAlignment = .center
        leapLabel.font = UIFont (name: "Apple SD Gothic Neo", size: 20)
        
        if Int(yearLol)! % 4 == 0 {
            leapLabel.text = "This year is Leap Year"
        } else {
            leapLabel.text = "This year isn't Leap Year"
        }
        
        //View
        view.addSubview(cancelButton)
        view.addSubview(yearLabel)
        view.addSubview(leapLabel)
        
        //Target
        cancelButton.addTarget(self, action: #selector(backButton(target:)), for: .touchDown)
    }
    
    @objc func backButton(target: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    

}
