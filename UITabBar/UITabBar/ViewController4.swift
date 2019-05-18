//
//  ViewController4.swift
//  UITabBar
//
//  Created by EasyFate on 05/02/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    let nextButton = UIButton()
    let prevButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Step 4 of 5"
        
        nextButton.setTitle("Next Step", for: .normal)
        nextButton.setTitleColor(UIColor.black, for: .normal)
        nextButton.frame = CGRect(x: 230, y: 680, width: 120, height: 35)
        nextButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        nextButton.titleLabel?.textAlignment = .center
        nextButton.layer.borderWidth = 1
        nextButton.layer.cornerRadius = 5
        nextButton.clipsToBounds = true
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(nextButton(_:)), for: .touchUpInside)
        
        prevButton.setTitle("Previous Step", for: .normal)
        prevButton.setTitleColor(UIColor.black, for: .normal)
        prevButton.frame = CGRect(x: 25, y: 680, width: 160, height: 35)
        prevButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        prevButton.titleLabel?.textAlignment = .center
        prevButton.layer.borderWidth = 1
        prevButton.layer.cornerRadius = 5
        prevButton.clipsToBounds = true
        view.addSubview(prevButton)
        prevButton.addTarget(self, action: #selector(backButton(target:)), for: .touchUpInside)

        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(title: "Next Step", image: nil, tag: 1)
        tabBarItem = UITabBarItem(title: "Previous Step", image: nil, tag: 0)
        self.tabBarItem = tabBarItem
        
        view.backgroundColor = UIColor.white
        
        
    }
    @objc func nextButton(_:UIButton) {
        let secondVC = ViewController5()
        navigationController?.pushViewController(secondVC, animated: true)
        
    }

    @objc func backButton(target: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
