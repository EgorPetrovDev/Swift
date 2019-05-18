//
//  Data.swift
//  UITabBar
//
//  Created by EasyFate on 05/02/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class Data: UIViewController {

    // Images
    static let videoImages = [#imageLiteral(resourceName: "screen1"), #imageLiteral(resourceName: "screen2"), #imageLiteral(resourceName: "screen3"), #imageLiteral(resourceName: "screen4video"), #imageLiteral(resourceName: "screen5video")]
    
    static let formatImages = [#imageLiteral(resourceName: "screen4format"), #imageLiteral(resourceName: "screen2"), #imageLiteral(resourceName: "screen3"), #imageLiteral(resourceName: "screen4format"), #imageLiteral(resourceName: "screen5format")]
    
    // Titles
    static let videoTitles = ["Go to settings", "Scroll down", "Enter camera settings", "Select Record Vdieo", "Select quality"]
    
    static let formatTitles = ["Go to settings", "Scroll down", "Enter camera settings", "Select Formats", "Select Camera Capture"]
    
    // Texts 
    static let videoSteps = [videoStep1, videoStep2, videodStep3, videoStep4, videoStep5]
    
    static let formatSteps = [formatStep1, formatStep2, formatStep3, formatStep4, formatStep5]
}


// Texts for Video
let videoStep1 = "Open home screen and tap on settings icon."

let videoStep2 = "Then scroll down to camera settings."

let videodStep3 = "To setup camera select Camera Settings."

let videoStep4 = "To change video quality select Record Video."

let videoStep5 = "Here select your preffered quality."



// Texts for Format

let formatStep1 = "Open home screen and tap on settings icon."

let formatStep2 = "Then scroll down to camera settings."

let formatStep3 = "To setup camera select Camera Settings."

let formatStep4 = "To change camera formats select Formats."

let formatStep5 = "Here select your preffered format."
