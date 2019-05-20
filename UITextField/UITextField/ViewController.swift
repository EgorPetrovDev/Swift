//
//  ViewController.swift
//  UITextField
//
//  Created by EasyFate on 19/05/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    var myTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTextField()
        myTextField.delegate = self
        //self.myTextField.becomeFirstResponder()
       //NotificationCenter.default.addObserver(self, selector: #selector(textDidChangeNotification(ncParam:)), name: UITextField.textDidChangeNotification, object: nil)
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = -200
        }
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = 0.0
        }
        
    }
    
    //MARK: - CreateUI
    func createTextField() {
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 31)
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = UITextField.BorderStyle.roundedRect
        myTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        myTextField.textAlignment = .center
        myTextField.placeholder = "Im swift developer"
        myTextField.center = self.view.center
        view.addSubview(myTextField)
    }
    
//    //MARK: - Notification
//    @objc func textDidChangeNotification(ncParam: NSNotification) {
//        print("textDidChangeNotification = \(ncParam)")
//}
    
    //MARK: - UITextFieldDelegate
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        print("textFieldShouldBeginEditing - можно ли редактировать")
//        return true
//
//    }
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        print("textFieldDidBeginEditing - началось редактирование")
//    }
//
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        print("textFieldShouldEndEditing - закончелось редактирование")
//        return true
//    }
//
//    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
//        print("textFieldDidEndEditing")
//    }
//
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print("textField - вы ввели \(string)")
//        return true
//    }
//
//    func textFieldShouldClear(_ textField: UITextField) -> Bool {
//        print("textFieldShouldClear - вы что-то очистили")
//        return true
//    }
//
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn - хотите убрать клавиатуру?")
        if textField == myTextField {
            self.myTextField.resignFirstResponder()
        }
        return true
    }
    
    


}

