//
//  ViewController2.swift
//  UIBarButtonItem
//
//  Created by EasyFate on 02/02/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "SECOND VC BOYZ"
    

       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }


    
    
    

  

}


