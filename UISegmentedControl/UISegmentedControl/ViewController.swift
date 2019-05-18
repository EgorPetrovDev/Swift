//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by EasyFate on 26/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let shopLabel = UILabel()
    var colorsXs = UISegmentedControl()
    var memoryXs = UISegmentedControl()
    var imageView = UIImageView()

    var colorArray = ["Silver", "Space Gray", "Gold"]
    var memoryArray = ["64GB", "256GB", "512GB"]
    
    let xsLabel = UILabel()

    let nextButton = UIButton()
    
    let imageArray = [UIImage(named: "xssilver.png"), UIImage(named: "xsspacegray.png"), UIImage(named: "xsgold.png")]
    
    var activityVC: UIActivityViewController? = nil
    let shareButton = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Header
        shopLabel.text = "re:Store"
        shopLabel.textAlignment = .center
        shopLabel.font = UIFont(name: "AppleSDGothicNeo-bold", size: 40)
        shopLabel.frame = CGRect(x: 0, y: 55, width: 375, height: 35)
        view.addSubview(shopLabel)
        
        //ImageXs
        imageView.frame = CGRect(x: 65, y: 110, width: 250, height: 500)
        imageView.image = imageArray[0]
        view.addSubview(imageView)
        
        //Create Segment
        colorsXs = UISegmentedControl(items: colorArray)
        colorsXs.frame = CGRect(x: 65, y: 650, width: 250, height: 30)
        view.addSubview(colorsXs)
        colorsXs.addTarget(self, action: #selector(selectedValue(target:)), for: .valueChanged)
        
        
        
        memoryXs = UISegmentedControl(items: memoryArray)
        memoryXs.frame = CGRect(x: 65, y: 680, width: 250, height: 30)
        view.addSubview(memoryXs)
        memoryXs.addTarget(self, action: #selector(selectedMemory(sender:)), for: .valueChanged)
        
        
        
        //Next Button
        nextButton.setTitle("Buy", for: .normal)
        nextButton.setTitleColor(UIColor.black, for: .normal)
        nextButton.backgroundColor = UIColor.white
        nextButton.frame = CGRect(x: 50, y: 725, width: 130, height: 42)
        nextButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 24)
        nextButton.titleLabel?.textAlignment = .center
        nextButton.layer.borderWidth = 1
        nextButton.layer.cornerRadius = 5
        view.addSubview(nextButton)
        
        nextButton.addTarget(self, action: #selector(button(_:)), for: .touchDown)
        
    
        
        

        xsLabel.text = "Apple iPhone Xs"
        xsLabel.textAlignment = .center
        xsLabel.font = UIFont(name: "AppleSDGothicNeo-bold", size: 25)
        xsLabel.frame = CGRect(x: 0, y: 610, width: 375, height: 30)
        view.addSubview(xsLabel)
        
        shareButton.setTitle("Share", for: .normal)
        shareButton.backgroundColor = UIColor.white
        shareButton.setTitleColor(UIColor.blue, for: .normal)
        shareButton.frame = CGRect(x: 190, y: 725, width: 130, height: 42)
        shareButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 24)
        shareButton.titleLabel?.textAlignment = .center
        shareButton.layer.borderWidth = 1
        shareButton.layer.cornerRadius = 5
        view.addSubview(shareButton)
        
        shareButton.addTarget(self, action: #selector(shareResult(paramSender:)), for: .touchUpInside)
        

    }
    
 
    
    @objc func colorsXsValueChanged(segment: UISegmentedControl) {
        if segment.selectedSegmentIndex == 0 {
            
        }
    }
    
    @objc func shareResult(paramSender: Any) {
        let text = "Apple iPhone Xs \(memoryArray[memoryXs.selectedSegmentIndex]) \(colorArray[colorsXs.selectedSegmentIndex])"
        activityVC = UIActivityViewController(activityItems: [text ?? "nil"], applicationActivities: nil)
        present(activityVC!, animated: true, completion: nil)  
    }
    
    @objc func button(_:UIButton) {
        

        let alert = UIAlertController(title: "Confirm your order:", message: "Apple iPhone Xs \(memoryArray[memoryXs.selectedSegmentIndex]) \(colorArray[colorsXs.selectedSegmentIndex])", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
        let action2 = UIAlertAction(title: "Confirm", style: .default) { action in
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2") as! ViewController2
            self.present(vc, animated: true, completion: nil)
        }
        action.setValue(UIColor.red, forKey: "titleTextColor")
        alert.addAction(action)
        alert.addAction(action2)
        
        present(alert, animated: true, completion: nil)

    }
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == colorsXs {
            let segmentIndex = target.selectedSegmentIndex
            imageView.image = imageArray[segmentIndex]
            let pr = target.titleForSegment(at: segmentIndex)
            print(pr ?? "")
        }
    }
    
    @objc func selectedMemory(sender: UISegmentedControl) {
        switch memoryXs.selectedSegmentIndex {
        case 0:
            print(memoryArray[0])
        case 1:
            print(memoryArray[1])
        case 2:
            print(memoryArray[2])
        default:
            return
        }
    }


}

