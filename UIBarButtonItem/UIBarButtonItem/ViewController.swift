//
//  ViewController.swift
//  UIBarButtonItem
//
//  Created by EasyFate on 01/02/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        navigationItem.title = "FIRST VC BOYZ"
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.backgroundColor = UIColor.clear
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: (UIColor.darkText)]
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(performAdd(param:)))
        
        let saveButton = UIButton()
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(UIColor.black, for: .normal)
        saveButton.titleLabel?.textAlignment = .center
        saveButton.layer.borderWidth = 1
        saveButton.layer.cornerRadius = 5
        saveButton.layer.borderColor = UIColor.black.cgColor
        saveButton.frame = CGRect(x: 0, y: 0, width: 80, height: 30)
        saveButton.addTarget(self, action: #selector(saveButtonFunc(_:)), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: saveButton)
        
        let items = ["Up", "Down"]
        let segmentController = UISegmentedControl(items: items)
        segmentController.isMomentary = true
        segmentController.addTarget(self, action: #selector(segmentControolerTapped(param:)), for: .valueChanged)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: segmentController)
        
        
    }
    //MARK: - Method
 
    
    @objc func performAdd(param: UIBarButtonItem) {
        print("Add click")
    }
    
    @objc func saveButtonFunc(_: UIButton) {
        let alert = UIAlertController(title: "Warning!", message: "Do you want to go to the second screen?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes go", style: .default, handler: { (UIAlertActuin) in
            let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2") as! ViewController2
            self.navigationController?.pushViewController(vc2, animated: true)
            self.present(vc2, animated: true, completion: nil)
        }))
       alert.addAction(UIAlertAction(title: "No no no", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @objc func segmentControolerTapped(param: UISegmentedControl) {
        switch param.selectedSegmentIndex {
        case 0:
            print("Up")
        case 1:
            print("Down")
        default:
            break
        }
    }
    


 
}

