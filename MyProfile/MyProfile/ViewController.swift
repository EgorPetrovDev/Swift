//
//  ViewController.swift
//  MyProfile
//
//  Created by EasyFate on 25/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let loginLabel = UILabel()
    let emailTF = UITextField()
    let passwordTF = UITextField()
    let loginButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginLabel.text = "Log In"
        loginLabel.textColor = UIColor.black
        loginLabel.font = UIFont(name: "AppleSDGothicNeo-bold", size: 30)
        loginLabel.frame = CGRect(x: 0, y: 140, width: 375, height: 50)
        loginLabel.textAlignment = .center
        view.addSubview(loginLabel)
        
        emailTF.backgroundColor = UIColor.yellow
        emailTF.keyboardType = .default
        emailTF.layer.cornerRadius = 4
        emailTF.textColor = UIColor.black
        emailTF.textAlignment = .center
        emailTF.placeholder = "Enter your email..."
        emailTF.font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        emailTF.frame = CGRect(x: 90, y: 240, width: 200, height: 30)
        view.addSubview(emailTF)
        
        passwordTF.backgroundColor = UIColor.yellow
        passwordTF.keyboardType = .default
        passwordTF.layer.cornerRadius = 4
        passwordTF.textColor = UIColor.black
        passwordTF.textAlignment = .center
        passwordTF.placeholder = "Enter your password..."
        passwordTF.isSecureTextEntry = true
        passwordTF.font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        passwordTF.frame = CGRect(x: 90, y: 300, width: 200, height: 30)
        view.addSubview(passwordTF)
        
        loginButton.setTitle("Next", for: .normal)
        loginButton.setTitleColor(UIColor.black, for: .normal)
        loginButton.frame = CGRect(x: 115, y: 500, width: 150, height: 40)
        loginButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 30)
        loginButton.titleLabel?.textAlignment = .center
        loginButton.layer.borderWidth = 1
        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderColor = UIColor.black.cgColor
        view.addSubview(loginButton)
        
        loginButton.addTarget(self, action: #selector(start(_:)), for: .touchDown)
        
    }
    
    @objc func start(_: UIButton) {
        

        if emailTF.text == "" || passwordTF.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please fill in all fields", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    
    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:
        "VCSettings") as? ViewControllerSettings
        present(vc!, animated: true, completion: nil)
   
}
    
    //Hide keyboard by tap
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
}

