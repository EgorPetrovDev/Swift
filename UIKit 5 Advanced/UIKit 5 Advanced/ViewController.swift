//
//  ViewController.swift
//  UIKit 5 Advanced
//
//  Created by EasyFate on 24/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let choicePicker = UIPickerView()
    let register = UILabel()
    let goButton = UIButton()
    let choice = ["Developer", "Customer"]
    var user = "Developer"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Picker
        choicePicker.dataSource = self
        choicePicker.delegate = self
        choicePicker.center = view.center
        view.addSubview(choicePicker)
        
        //Register Label
        register.text = "Register as:"
        register.textColor = UIColor.black
        register.textAlignment = .center
        register.font = UIFont(name: "AppleSDGothicNeo-bold", size: 40)
        register.frame = CGRect(x: 0, y: 200, width: 375, height: 50)
        view.addSubview(register)
        
        //Go Button
        goButton.setTitle("Go", for: .normal)
        goButton.setTitleColor(UIColor.black, for: .normal)
        goButton.frame = CGRect(x: 155, y: 570, width: 70, height: 70)
        goButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 35)
        goButton.titleLabel?.textAlignment = .center
        goButton.layer.borderWidth = 1
        goButton.layer.cornerRadius = 0.5 * goButton.bounds.size.width
        goButton.clipsToBounds = true
        view.addSubview(goButton)
        
        goButton.addTarget(self, action: #selector(selectUser(sender:)), for: .touchDown)
    }
    @objc func selectUser(sender: UIButton) {
        if user == "developer" {
           let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Developer") as! ViewControllerDeveloper
            present(vc, animated: true, completion: nil)
        }
        if user == "customer" {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Customer") as! ViewControllerCustomer
            present(vc, animated: true, completion: nil)
        }
    }

}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
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
            user = "developer"
            print(user)
        }
        if row == 1 {
            user = "customer"
            print(user)
        }
    }
}

