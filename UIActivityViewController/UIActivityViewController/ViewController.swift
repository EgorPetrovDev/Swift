//
//  ViewController.swift
//  UIActivityViewController
//
//  Created by EasyFate on 28/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var buttonShare = UIButton()
    var textField = UITextField()
    var activityViewController : UIActivityViewController? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTextField()
        createButton()
        
    }
    
    //MARK: - Mothod
    func createTextField() {
        textField.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
        textField.center = view.center
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.placeholder = "Enter text to share"
        textField.delegate = self
        view.addSubview(textField)
        
    }
    
    func createButton() {
        buttonShare = UIButton(type: .roundedRect)
        buttonShare.frame = CGRect(x: 50, y: 420, width: 280, height: 44)
        buttonShare.setTitle("Share", for: .normal)
        buttonShare.addTarget(self, action: #selector(handleShare(paramSender:)), for: .touchUpInside)
        view.addSubview(buttonShare)
    }
    
    @objc func handleShare(paramSender: Any) {
        let text = textField.text
        if text?.characters.count == 0 {
            let message = "Enter text and then click"
            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
        }
        activityViewController = UIActivityViewController(activityItems: [textField.text ?? "nil"], applicationActivities: nil)
        present(activityViewController!, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

