//
//  OneNewsViewController.swift
//  NewsApp
//
//  Created by EasyFate on 31.05.2019.
//  Copyright © 2019 EgorPetrov. All rights reserved.
//

import UIKit
import SafariServices

class OneNewsViewController: UIViewController {
    
    var article: Article!
    var index = 0

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBAction func PushButtonAction(_ sender: Any) {
        if let url = URL(string: article.url) {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        }
        
    }
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var safariButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TitleLabel.text = article.title
        DescriptionLabel.text = article.description
        
        DispatchQueue.main.async {
            if let url = URL(string: self.article.urlToImage) {
                if let data = try? Data(contentsOf: url) {
                    self.ImageView.image = UIImage(data: data)
                } else {
                    self.activityIndicator.stopAnimating()
                    self.activityIndicator.hidesWhenStopped = true
                }
            }
        }
        
        if URL(string: article.url) == nil {
            //скрываем кнопку
            self.safariButton.isEnabled = false
        }

       
    }
    

   

}
