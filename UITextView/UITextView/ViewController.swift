//
//  ViewController.swift
//  UITextView
//
//  Created by EasyFate on 20/05/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTextView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardDidShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func createTextView() {
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: self.view.bounds.width - 50, height: self.view.bounds.height / 2))
        myTextView.text = "Some text"
        myTextView.contentInset = UIEdgeInsets(top: 200, left: 10, bottom: 10, right: 10)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .gray
        self.view.addSubview(myTextView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.myTextView.resignFirstResponder()
        self.myTextView.backgroundColor = .white
    }
    
    @objc func updateTextView(param: Notification) {
        let userInfo = param.userInfo
        
        let getKeyboardRect = (userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let keyboardFrame = self.view.convert(getKeyboardRect, to: view.window)
        
        if param.name == UIResponder.keyboardWillHideNotification {
            myTextView.contentInset = UIEdgeInsets.zero
        } else {
            myTextView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardFrame.height / 4, right: 0)
            myTextView.scrollIndicatorInsets = myTextView.contentInset
        }
        myTextView.scrollRangeToVisible(myTextView.selectedRange)
    }
    
    
}

