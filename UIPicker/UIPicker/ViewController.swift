//
//  ViewController.swift
//  UIPicker
//
//  Created by EasyFate on 22/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let datePicker = UIDatePicker()
    let timePicker = UIDatePicker()
    let goButton = UIButton()
    
    let dateLabel = UILabel()
    let timeLabel = UILabel()
    
    var yearText = "2019"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        
        // Date Picker
        datePicker.frame = CGRect(x: 0, y: 200, width: 375, height: 150)
        datePicker.datePickerMode = .date
        
        // Time Picker
        timePicker.frame = CGRect(x: 0, y: 400, width: 375, height: 150)
        timePicker.datePickerMode = .time
        
        // Date Label
        dateLabel.frame = CGRect(x: 0, y: 100, width: 375, height: 21)
        dateLabel.textAlignment = .center
        
        // Time Label
        timeLabel.frame = CGRect(x: 0, y: 150, width: 375, height: 21)
        timeLabel.textAlignment = .center
        
        // "Go" Button
        goButton.frame = CGRect(x: 115, y: 600, width: 145, height: 43)
        goButton.setTitle("Go", for: .normal)
        goButton.setTitleColor(UIColor.black, for: .normal)
        goButton.layer.borderColor = UIColor.black.cgColor
        goButton.layer.cornerRadius = 5
        goButton.layer.borderWidth = 1
        
        
        // View
        view.addSubview(datePicker)
        view.addSubview(timePicker)
        
        view.addSubview(dateLabel)
        view.addSubview(timeLabel)
        
        view.addSubview(goButton)
        
        // Targets
        datePicker.addTarget(self, action: #selector(checkDate(_:)), for: .valueChanged)
        timePicker.addTarget(self, action: #selector(checkTime(_:)), for: .valueChanged)
        goButton.addTarget(self, action: #selector(start(_:)), for: .touchDown)
    }
    
    @objc func checkDate(_: UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "dd-MM-yyyy"
        
        let year = DateFormatter()
        year.dateFormat = "yyyy"
        
        yearText = year.string(from: datePicker.date)
        
        dateLabel.text = format.string(from: datePicker.date)
    }
    
    @objc func checkTime(_: UIDatePicker) {
        let format = DateFormatter()
        format.timeStyle = .short
        let time = format.string(from: timePicker.date)
        
        let alert = UIAlertController(title: "Time:", message: time, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        timeLabel.text = format.string(from: timePicker.date)
    }
    
    @objc func start(_: UIButton) {
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as? ViewController2 else {
            print ("Could not instantiate view controller with identifier of type ViewController2")
            return
            
        }
        vc.yearLol = yearText
        self.present(vc, animated: true, completion: nil)
    }


}


