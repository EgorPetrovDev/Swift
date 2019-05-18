//
//  SecondViewController.swift
//  UINavigationController
//
//  Created by EasyFate on 31/01/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "SecondVC"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    

    @objc func goBack() {
        //navigationController?.popViewController(animated: true)
        //Получаем текущий массив контроллеров
        var currentControllerArray = self.navigationController?.viewControllers
        //Удаляем последний контроллер в массиве
        currentControllerArray?.removeLast()
        //Присвоим
        guard let newController = currentControllerArray else {return}
        
            self.navigationController?.viewControllers = newController
        }
    }


