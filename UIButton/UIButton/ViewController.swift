//
//  ViewController.swift
//  UIButton
//
//  Created by EasyFate on 20/05/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myButton = UIButton()
    let normalImage = UIImage(named: "apple1")
    let highlightedImage = UIImage(named: "apple2")
    
//    @IBOutlet var myButton: [UIButton]!
//
//    @IBAction func button1(_ sender: UIButton) {
//        let button = sender as! UIButton
//        if button.titleLabel?.text == "Button1" {
//            print("Button1")
//        } else if button.tag == 3 {
//            print("Button3")
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        for button in myButton {
//            button.setTitleColor(UIColor.green, for: .normal)
//        }
        
        myButton = UIButton(type: .roundedRect)
        myButton.frame = CGRect(x: 110, y: 200, width: 100, height: 100)
        myButton.setTitle("Apple1", for: .normal)
        myButton.setTitle("Apple2", for: .highlighted) // кнопка нажата
        myButton.addTarget(self, action: #selector(buttonIsPressed(sender:)), for: .touchDown) // кнопка нажата, но не отпущена
        myButton.addTarget(self, action: #selector(buttonIsTapped(sender:)), for: .touchUpInside) // палец с кнопки уже убран
        myButton.setBackgroundImage(normalImage, for: .normal)
        myButton.setBackgroundImage(highlightedImage, for: .highlighted)
        view.addSubview(myButton)
  }
    
    @objc func buttonIsPressed(sender: UIButton) {
 print("Button is pressed")
}
    @objc func buttonIsTapped(sender: UIButton) {
        print("Button is tapped")
    }

}
