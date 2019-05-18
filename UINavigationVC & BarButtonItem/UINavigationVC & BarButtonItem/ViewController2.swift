//
//  ViewController2.swift
//  UINavigationVC & BarButtonItem
//
//  Created by EasyFate on 02/02/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    let textView = UITextView()
    let scrollView = UIScrollView()
    let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.blue]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //White NavigationBar
        navigationController?.navigationBar.barTintColor = UIColor.white
        //Black StatusBar
        navigationController?.navigationBar.barStyle = .default
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    
    
      
        
        navigationItem.title = "SECOND VC BOYZ"
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        

   

}
    
    override func willMove(toParent parent: UIViewController?) {
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
}
