//
//  ViewController2.swift
//  UINavigationVC & BarButtonItem
//
//  Created by EasyFate on 03/02/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.black]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    view.backgroundColor = UIColor.white
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.barStyle = .default
        navigationItem.title = "SESCOND VC BOYZ"
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        
    }
  
    
    override func willMove(toParent parent: UIViewController?) {
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.black
        
    }
    

}
