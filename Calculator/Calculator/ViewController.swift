//
//  ViewController.swift
//  Calculator
//
//  Created by EasyFate on 14/05/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Переменные для калькулятора
   
    var sign:Bool = false   // Кнопка математического знака
    var firstNum:Double = 0 // Первое число на экране
    var screenNumber:Double = 0 // Текущее число на экране
    var operation:Int = 0  // Какая операция производится
    
    @IBOutlet weak var Result: UILabel!
    
    @IBAction func Nums(_ sender: UIButton) {
        // Если введен математический знак, то текст в поле result будет равен соотвественно математическому знаку кнопки, затем этот знак стирается для ввода второго числа
        if sign == true {
            Result.text = String(sender.tag)
            sign = false
        } else {
            Result.text = Result.text! + String(sender.tag)
        }
        screenNumber = Double(Result.text!)!     // Число с экрана конвертируется в тип Double
        }
    
    
    
    @IBAction func Buttons(_ sender: UIButton) {
        
        // Если поле result не пустое, и выбрана кнопка и она не является стиранием, равенством, изменением знака числа или процентом, то пишется соотвествующий знак кнопки(деленние, умножение, вычитание, сложение)
        if Result.text != "" && sender.tag != 10 && sender.tag != 15 && sender.tag != 16 && sender.tag != 17 {
            firstNum = Double(Result.text!)!
            if sender.tag == 11 {  // Деление
                Result.text = "/"
            } else if sender.tag == 12 {  // Умножение
                Result.text = "x"
            } else if sender.tag == 13 {  // Вычитание
                Result.text = "-"
            } else if sender.tag == 14 {  // Сложение
                Result.text = "+"
            }
            operation = sender.tag
            sign = true
        // Если нажата кнопка равно, то  если перед этим был нажато деление, то будет производиться деление  и так далеее
        } else if sender.tag == 15 { // Равно
            if operation == 11 {
                Result.text = String(firstNum / screenNumber)
                screenNumber = firstNum / screenNumber
            } else if operation == 12 {
                Result.text = String(firstNum * screenNumber)
                screenNumber = firstNum * screenNumber
            } else if operation == 13 {
                Result.text = String(firstNum - screenNumber)
                screenNumber = firstNum - screenNumber
            } else if operation == 14 {
                Result.text = String(firstNum + screenNumber)
                screenNumber = firstNum + screenNumber
            }
        // Кнопка стереть очищает поле result и обнуляет переменные
        } else if sender.tag == 10 { // Стереть
                Result.text = ""
                firstNum = 0
                screenNumber = 0
                operation = 0
            
        } else if sender.tag == 16 { // Изменение знака числа
            if screenNumber >= 0 {
            Result.text = String(screenNumber * -1)
            screenNumber = screenNumber * -1
            } else if screenNumber <= 0 {
                Result.text = String(screenNumber * -1)
                screenNumber = screenNumber * -1
            }
    
        } else if sender.tag == 17 { // Процент
                Result.text = String(screenNumber / 100)
            screenNumber = screenNumber / 100
            }
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
   
    

    
    


}

