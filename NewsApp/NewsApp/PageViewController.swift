//
//  PageViewController.swift
//  NewsApp
//
//  Created by EasyFate on 02.06.2019.
//  Copyright © 2019 EgorPetrov. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {

    
    @IBAction func refreshPageControllerAction(_ sender: Any) {
        loadNews {
            DispatchQueue.main.async {
                self.reloadInputViews()
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        
        self.showViewControllers()
        loadNews {
          self.showViewControllers()
        }



    }
    
    func showViewControllers() {
        DispatchQueue.main.async {
            if let vc = self.pageviewController(for: 0) {
                self.setViewControllers([vc], direction: .forward, animated: false, completion: nil)
            }
            
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = ((viewController as! OneNewsViewController).index ?? 0) - 1
        return self.pageviewController(for: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = ((viewController as! OneNewsViewController).index ?? 0) + 1
        return self.pageviewController(for: index)
        
    }
    
    func pageviewController(for index:Int) -> OneNewsViewController? {
        if index < 0 {
            return nil
        }
        if index >= articles.count {
            return nil
        }
        let vc = (storyboard?.instantiateViewController(withIdentifier: "oneNewsSID") as! OneNewsViewController)
        vc.article = articles[index]
        vc.index = index
        return vc
    }
    

}
