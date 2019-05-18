//
//  ViewControllerSettings.swift
//  MyProfile
//
//  Created by EasyFate on 25/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit
import Foundation

class ViewControllerSettings: UIViewController {
    
    let sexLabel = UILabel()
    let choicePicker = UIPickerView()
    let nameLabel = UILabel()
    let nickLabel = UILabel()
    let nameTF = UITextField()
    let nickTF = UITextField()
    let slider = UISlider()
    let saveButton = UIButton()
    let choice = ["Unknown", "Man", "Woman"]
    var user = "Unknown"

    override func viewDidLoad() {
        super.viewDidLoad()

        sexLabel.text = "Your gender:"
        sexLabel.textAlignment = .center
        sexLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        sexLabel.frame = CGRect(x: 30, y: 180, width: 120, height: 20)
        view.addSubview(sexLabel)
        
        //Picker
        choicePicker.dataSource = self
        choicePicker.delegate = self
        choicePicker.frame = CGRect(x: 190, y: 140, width: 120, height: 100)
        view.addSubview(choicePicker)
        
        nameTF.backgroundColor = UIColor.yellow
        nameTF.keyboardType = .default
        nameTF.layer.cornerRadius = 4
        nameTF.textColor = UIColor.black
        nameTF.textAlignment = .center
        nameTF.placeholder = "Enter your name..."
        nameTF.font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        nameTF.frame = CGRect(x: 65, y: 330, width: 250, height: 30)
        view.addSubview(nameTF)
        
        nameLabel.text = "Name:"
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        nameLabel.frame = CGRect(x: 100, y: 300, width: 120, height: 20)
        view.addSubview(nameLabel)
        
        nickTF.backgroundColor = UIColor.yellow
        nickTF.keyboardType = .default
        nickTF.layer.cornerRadius = 4
        nickTF.textColor = UIColor.black
        nickTF.textAlignment = .center
        nickTF.placeholder = "Enter your nick..."
        nickTF.font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        nickTF.frame = CGRect(x: 65, y: 430, width: 250, height: 30)
        view.addSubview(nickTF)
        
        nickLabel.text = "Nick:"
        nickLabel.textAlignment = .center
        nickLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        nickLabel.frame = CGRect(x: 100, y: 400, width: 120, height: 20)
        view.addSubview(nickLabel)
        
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(UIColor.black, for: .normal)
        saveButton.frame = CGRect(x: 115, y: 630, width: 150, height: 40)
        saveButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 30)
        saveButton.titleLabel?.textAlignment = .center
        saveButton.layer.borderWidth = 1
        saveButton.layer.cornerRadius = 5
        saveButton.layer.borderColor = UIColor.black.cgColor
        view.addSubview(saveButton)
        
        saveButton.addTarget(self, action: #selector(start(_:)), for: .touchDown)
        
        slider.frame = CGRect(x: 87.5, y: 550, width: 200, height: 23)
        slider.minimumValue = 0.0
        slider.maximumValue = 1.0
        slider.isContinuous = true
        slider.tintColor = UIColor.black
        slider.value = 0
        slider.addTarget(self, action: #selector(sliderValueDidChange(sender:)), for: .valueChanged)
        view.addSubview(slider)
        
        
        
        
    }
    
    @objc func start(_: UIButton) {
        
        if nameTF.text == "" || nickTF.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please fill in all fields", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
        let alert = UIAlertController(title: "Success!", message: "User created", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
        
    }
    
    @objc func sliderValueDidChange(sender: UISlider) {
        UIView.animate(withDuration: 1.0) {
            switch sender.value {
            case 0.1...0.2:
                self.view.backgroundColor = UIColor.yellow
            case 0.2...0.3:
                self.view.backgroundColor = UIColor.purple
            case 0.3...0.4:
                self.view.backgroundColor = UIColor.blue
            case 0.4...0.5:
                self.view.backgroundColor = UIColor.red
            case 0.5...0.6:
                self.view.backgroundColor = UIColor.gray
            case 0.6...0.7:
                self.view.backgroundColor = UIColor.green
            case 0.7...0.8:
                self.view.backgroundColor = UIColor.orange
            case 0.8...0.9:
                self.view.backgroundColor = UIColor.brown
            default:
                self.view.backgroundColor = UIColor.cyan
            }
        }
        
            }
}

extension ViewControllerSettings: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return choice.count
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return choice[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            user = "Unknown"
            print(user)
        }
        if row == 1 {
            user = "Man"
            print(user)
        }
        if row == 2 {
            user = "Woman"
            print(user)
        }
    }
    
    //Hide keyboard by tap
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)

}

}
