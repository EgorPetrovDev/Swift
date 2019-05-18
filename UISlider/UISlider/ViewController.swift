//
//  ViewController.swift
//  UISlider
//
//  Created by EasyFate on 25/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //Outlet
    
    @IBOutlet weak var sliderBoard: UISlider!
    
    var player = AVAudioPlayer()
    let slider = UISlider()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.frame = CGRect(x: 0, y: 0, width: 200, height: 23)
        slider.center = view.center
        slider.minimumValue = 0.0
        slider.maximumValue = 100.0
        view.addSubview(slider)
        
        
        //Target
        slider.addTarget(self, action: #selector(changeSlider), for: .valueChanged)
        
        do {
            if let audioPath = Bundle.main.path(forResource: "lmfao", ofType: "mp3") {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                slider.maximumValue = Float(player.duration)
            }
        } catch  {
            print("Error")
        }
        
        player.play()
        
    }
    
    //MARK: - Method
    @objc func changeSlider(sender: UISlider) {
        if sender == slider {
            player.currentTime = TimeInterval(sender.value)
        }
    }
    
 
    
    //MARK: - Action
    @IBAction func playButton(_ sender: Any) {
        player.play()
    }
    
    
    @IBAction func pauseButton(_ sender: Any) {
        player.pause()
    }
    
    
    @IBAction func sliderAction(_ sender: Any) {
        player.volume = sliderBoard.value
    }
    

}

