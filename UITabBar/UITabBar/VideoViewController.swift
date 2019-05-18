//
//  ViewController.swift
//  UITabBar
//
//  Created by EasyFate on 05/02/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    
    
    let widht = UIScreen.main.bounds.width
    var stepLabel = UILabel()
    var titleLabel = UILabel()
    var textView = UITextView()
    var picImage = UIImageView()
    let nextButton = UIButton()
    let prevButton = UIButton()
    var index = Int()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Navigation bar
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.barStyle = .black
        
        // Bar Image
        let imageView2 = UIImageView()
        let image = UIImage(named: "rd1")
        imageView2.image = image
        navigationItem.titleView = imageView2
        
        index = 0
        
        picImage.frame = CGRect(x: 90, y: 40, width: 200, height: 500)
        picImage.image = Data.videoImages[index]
        picImage.contentMode = .scaleAspectFill
        view.addSubview(picImage)
        
        titleLabel.frame = CGRect(x: 0, y: 535, width: widht, height: 60)
        titleLabel.text = Data.videoSteps[index]
        titleLabel.textAlignment = .center
        view.addSubview(titleLabel)
        
        stepLabel.frame = CGRect(x: 0, y: 0, width: widht, height: 40)
        stepLabel.text = Data.videoTitles[index]
        stepLabel.text = "Step \(index+1) of \(Data.videoImages.count)"
        stepLabel.textAlignment = .center
        view.addSubview(stepLabel)
        
        
        nextButton.setTitle("Next Step", for: .normal)
        nextButton.setTitleColor(UIColor.black, for: .normal)
        nextButton.frame = CGRect(x: 230, y: 590, width: 120, height: 35)
        nextButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        nextButton.titleLabel?.textAlignment = .center
        nextButton.layer.borderWidth = 1
        nextButton.layer.cornerRadius = 5
        nextButton.clipsToBounds = true
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(nextButton(sender:)), for: .touchUpInside)
        
        prevButton.setTitle("Previous Step", for: .normal)
        prevButton.setTitleColor(UIColor.black, for: .normal)
        prevButton.frame = CGRect(x: 25, y: 590, width: 160, height: 35)
        prevButton.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        prevButton.titleLabel?.textAlignment = .center
        prevButton.layer.borderWidth = 1
        prevButton.layer.cornerRadius = 5
        prevButton.clipsToBounds = true
        prevButton.isHidden = true
        view.addSubview(prevButton)
        prevButton.addTarget(self, action: #selector(prevButton(sender:)), for: .touchUpInside)
        
       
        
        view.backgroundColor = UIColor.white
        
    }
    
    @objc func prevButton(sender: UIButton) {
        index -= 1
        stepLabel.text = "Step \(index+1) of \(Data.videoImages.count)"
        titleLabel.text = Data.videoSteps[index]
        picImage.image = Data.videoImages[index]
        textView.text = Data.videoTitles[index]
        nextButton.isHidden = false
        prevButton.isHidden = (index == Data.videoImages.startIndex) ? true : false
        
        
    }
   
    @objc func nextButton(sender: UIButton) {
        index += 1
        stepLabel.text = "Step \(index+1) of \(Data.videoImages.count)"
        titleLabel.text = Data.videoSteps[index]
        picImage.image = Data.videoImages[index]
        textView.text = Data.videoTitles[index]
        prevButton.isHidden = false
        nextButton.isHidden = (index == Data.videoImages.endIndex-1) ? true : false
        
        
    }
    


}

