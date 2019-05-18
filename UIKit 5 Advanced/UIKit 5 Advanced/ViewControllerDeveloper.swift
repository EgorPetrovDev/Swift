//
//  ViewControllerDeveloper.swift
//  UIKit 5 Advanced
//
//  Created by EasyFate on 24/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewControllerDeveloper: UIViewController, UITextFieldDelegate {
    
    let nameLabel = UILabel()
    let surnameLabel = UILabel()
    let passwordLabel = UILabel()
    let cardLabel = UILabel()
    let emailLabel = UILabel()
    let headerLabel = UILabel()
    let techLabel = UILabel()
    let experienceLabel = UILabel()
    
    let nameTF = UITextField()
    let surnameTF = UITextField()
    let passwordTF = UITextField()
    let cardTF = UITextField()
    let emailTF = UITextField()
    let techTF = UITextField()
    let experienceTF = UITextField()
    
    
    let cancelButton = UIButton()
    let saveButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Header Label
        headerLabel.text = "Register as Developer:"
        headerLabel.textAlignment = .center
        headerLabel.textColor = UIColor.black
        headerLabel.font = UIFont(name: "AppleSDGothicNeo-bold", size: 30)
        headerLabel.frame = CGRect(x: 0, y: 140, width: 375, height: 50)
        view.addSubview(headerLabel)
        
        //Name Label
        nameLabel.text = "Name:"
        nameLabel.textAlignment = .right
        nameLabel.textColor = UIColor.black
        nameLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        nameLabel.frame = CGRect(x: 10, y: 210, width: 140, height: 20)
        view.addSubview(nameLabel)
        
        //Surname Label
        surnameLabel.text = "Surname:"
        surnameLabel.textAlignment = .right
        surnameLabel.textColor = UIColor.black
        surnameLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        surnameLabel.frame = CGRect(x: 10, y: 250, width: 140, height: 20)
        view.addSubview(surnameLabel)
        
        //Password Label
        passwordLabel.text = "Password:"
        passwordLabel.textAlignment = .right
        passwordLabel.textColor = UIColor.black
        passwordLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        passwordLabel.frame = CGRect(x: 10, y: 290, width: 140, height: 20)
        view.addSubview(passwordLabel)
        
        //Card Label
        cardLabel.text = "Card number:"
        cardLabel.textAlignment = .right
        cardLabel.textColor = UIColor.black
        cardLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        cardLabel.frame = CGRect(x: 10, y: 330, width: 140, height: 20)
        view.addSubview(cardLabel)
        
        //Email Label
        emailLabel.text = "EMail:"
        emailLabel.textAlignment = .right
        emailLabel.textColor = UIColor.black
        emailLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        emailLabel.frame = CGRect(x: 10, y: 370, width: 140, height: 20)
        view.addSubview(emailLabel)
        
        //Tech Label
        techLabel.text = "iOS/Android/Web:"
        techLabel.textAlignment = .right
        techLabel.textColor = UIColor.black
        techLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 18)
        techLabel.frame = CGRect(x: 10, y: 410, width: 140, height: 20)
        view.addSubview(techLabel)
        
        //Experience Label
        experienceLabel.text = "Experience:"
        experienceLabel.textAlignment = .right
        experienceLabel.textColor = UIColor.black
        experienceLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        experienceLabel.frame = CGRect(x: 10, y: 450, width: 140, height: 20)
        view.addSubview(experienceLabel)
        
        //Name TextField
        nameTF.backgroundColor = UIColor.yellow
        nameTF.keyboardType = .default
        nameTF.layer.cornerRadius = 4
        nameTF.textColor = UIColor.black
        nameTF.textAlignment = .center
        nameTF.placeholder = "Enter your name..."
        nameTF.font = UIFont(name: "Apple SD Gothic Neo", size: 14)
        nameTF.frame = CGRect(x: 170, y: 210, width: 150, height: 22)
        view.addSubview(nameTF)
        
        //Surname TextField
        surnameTF.backgroundColor = UIColor.yellow
        surnameTF.keyboardType = .default
        surnameTF.layer.cornerRadius = 4
        surnameTF.textColor = UIColor.black
        surnameTF.textAlignment = .center
        surnameTF.placeholder = "Enter your surname..."
        surnameTF.font = UIFont(name: "Apple SD Gothic Neo", size: 14)
        surnameTF.frame = CGRect(x: 170, y: 250, width: 150, height: 22)
        view.addSubview(surnameTF)
        
        //Password TextField
        passwordTF.backgroundColor = UIColor.yellow
        passwordTF.keyboardType = .default
        passwordTF.layer.cornerRadius = 4
        passwordTF.textColor = UIColor.black
        passwordTF.textAlignment = .center
        passwordTF.placeholder = "Enter your password..."
        passwordTF.font = UIFont(name: "Apple SD Gothic Neo", size: 14)
        passwordTF.frame = CGRect(x: 170, y: 290, width: 150, height: 22)
        passwordTF.isSecureTextEntry = true
        view.addSubview(passwordTF)
        
        //Card TextField
        cardTF.backgroundColor = UIColor.yellow
        cardTF.keyboardType = .numberPad
        cardTF.layer.cornerRadius = 4
        cardTF.textColor = UIColor.black
        cardTF.textAlignment = .center
        cardTF.placeholder = "Enter last 4 numbers..."
        cardTF.font = UIFont(name: "Apple SD Gothic Neo", size: 14)
        cardTF.frame = CGRect(x: 170, y: 330, width: 150, height: 22)
        //4 nubmers limit
        if (cardTF.text?.characters.count)! != 4 {
            let alert = UIAlertController(title: "Warning!", message: "Enter correct information", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        view.addSubview(cardTF)
        
        //Email TextField
        emailTF.backgroundColor = UIColor.yellow
        emailTF.keyboardType = .default
        emailTF.layer.cornerRadius = 4
        emailTF.textColor = UIColor.black
        emailTF.textAlignment = .center
        emailTF.placeholder = "Enter your email..."
        emailTF.font = UIFont(name: "Apple SD Gothic Neo", size: 14)
        emailTF.frame = CGRect(x: 170, y: 370, width: 150, height: 22)
        view.addSubview(emailTF)
        
        //iOS/Android/Web TextField
        techTF.backgroundColor = UIColor.yellow
        techTF.keyboardType = .default
        techTF.layer.cornerRadius = 4
        techTF.textColor = UIColor.black
        techTF.textAlignment = .center
        techTF.placeholder = "Enter your tech..."
        techTF.font = UIFont(name: "Apple SD Gothic Neo", size: 14)
        techTF.frame = CGRect(x: 170, y: 410, width: 150, height: 22)
        view.addSubview(techTF)
        
        //Experience TextField
        experienceTF.backgroundColor = UIColor.yellow
        experienceTF.keyboardType = .default
        experienceTF.layer.cornerRadius = 4
        experienceTF.textColor = UIColor.black
        experienceTF.textAlignment = .center
        experienceTF.placeholder = "Enter your experience..."
        experienceTF.font = UIFont(name: "Apple SD Gothic Neo", size: 14)
        experienceTF.frame = CGRect(x: 170, y: 450, width: 150, height: 22)
        view.addSubview(experienceTF)
        
        //Cancel Button
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(UIColor.black, for: .normal)
        cancelButton.backgroundColor = UIColor.red
        cancelButton.frame = CGRect(x: 80, y: 620, width: 80, height: 80)
        cancelButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        cancelButton.titleLabel?.textAlignment = .center
        cancelButton.layer.borderWidth = 1
        cancelButton.layer.cornerRadius = 0.5 * cancelButton.bounds.size.width
        cancelButton.clipsToBounds = true
        view.addSubview(cancelButton)
        
        //Save Button
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(UIColor.black, for: .normal)
        saveButton.backgroundColor = UIColor.green
        saveButton.frame = CGRect(x: 210, y: 620, width: 80, height: 80)
        saveButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        saveButton.titleLabel?.textAlignment = .center
        saveButton.layer.borderWidth = 1
        saveButton.layer.cornerRadius = 0.5 * saveButton.bounds.size.width
        saveButton.clipsToBounds = true
        view.addSubview(saveButton)
        
        //Targets
        saveButton.addTarget(self, action: #selector(alert), for: .touchDown)
        cancelButton.addTarget(self, action: #selector(backButton(target:)), for: .touchDown)
    }
    
    //Hide keyboard by tap
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
    //Back Button
        @objc func backButton(target: UIButton) {
            self.dismiss(animated: true, completion: nil)
        }
    
    //Save Button
    @objc func alert() {
        if (cardTF.text?.characters.count)! != 4 {
            let alert = UIAlertController(title: "Warning!", message: "Enter correct card information", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        if nameTF.text == "" || surnameTF.text == "" || passwordTF.text == "" || cardTF.text == "" || emailTF.text == "" || techTF.text == "" || experienceTF.text == "" {
            let alert = UIAlertController.init(title: "Error", message: "Please enter full information", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        } else {
            let alert = UIAlertController.init(title: "Success!", message: "Information saved successfully", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    
      }

    }
    
    
    
    

   


