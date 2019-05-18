//
//  ViewController.swift
//  UINavigationVC & BarButtonItem
//
//  Created by EasyFate on 02/02/2019.
//  Copyright © 2019 EasyFate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var button = UIButton()
    var saveButton = UIButton()
    let scrollView = UIScrollView()
    let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
    let textView = UITextView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
  
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "FIRST VC BOYZ"
        
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.sizeToFit()
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 30)
        button.addTarget(self, action: #selector(nextButton(paramSender:)), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        
        saveButton = UIButton(type: .system)
        saveButton.setTitle("Save", for: .normal)
        saveButton.sizeToFit()
        saveButton.frame = CGRect(x: 0, y: 0, width: 50, height: 30)
        saveButton.addTarget(self, action: #selector(saveButton(_:)), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: saveButton)
        
        scrollView.frame = view.bounds
        view.addSubview(scrollView)
        
        navigationController?.hidesBarsOnSwipe = true
        
        
        
        textView.text = "Как и все монстры, этот появился сразу после полуночи. Когда он пришел, Конор уже не спал. Ему приснился кошмар. Не обычный кошмар, а тот самый. Тот, что последнее время преследовал его почти каждую ночь. Тот, что с мраком, ветром и криками. Тот, в котором он изо всех сил сжимал эти руки, но не мог их удержать. Тот, который всегда кончался на том, что… – Уходи, – прошептал Конор в темноту комнаты, пытаясь отогнать кошмар, чтобы он не повторился наяву. – Уходи сейчас же. Он оглянулся на часы, которые мама поставила на прикроватном столике. 00:07. Семь минут после полуночи. Это слишком поздно, если завтра вставать в школу, тем более, если сегодня – воскресенье. Конор сел в кровати. Он никому не рассказал о кошмаре. Ни маме, ясное дело, ни папе, с которым он созванивался раз в две недели (или около того), ни бабушке и, ни в коем случае, никому в школе. Ни за что. То, что происходит в кошмаре, никому знать не надо. Конор окинул сонным взглядом комнату и нахмурился. Он что-то упускал. Он огляделся, все еще отходя ото сна. Кошмар ускользал от него, но оставалось еще что-то, что он не мог уловить, что-то иное, что-то… Конор прислушался, но тишину спокойного дома нарушали только поскрипывание с пустого первого этажа и шуршание маминой постели из соседней комнаты. Больше ничего. И вдруг он услышал. Услышал то, что, по всей видимости, его разбудило. Кто-то звал его по имени. – Конор . На мгновение его охватил испуг, внутри все сжалось. Он пришел за ним? Каким-то образом вырвался из кошмара и… – Не глупи, – сказал он себе. – Ты для этого слишком взрослый. И правда. В прошлом месяце ему исполнилось тринадцать. Монстров боится ребенок. Монстров боится тот, кто писается в кровати. Монстров боится… – Конор . Вот опять. Конор сглотнул. На дворе стоял непривычно теплый октябрь, и окно комнаты было еще открыто. Может, шелест занавесок на легком ветру звучит, как… – Конор . Ясно, это не ветер. Это именно голос, но он незнакомый. И точно не мамин. Он даже не женский. У Конора мелькнула безумная мысль – может, это папа неожиданно вернулся из Америки, но приехал слишком поздно и не стал звонить и… – Конор . Нет. Не папа. В этом голосе было что-то особенное, что-то чудовищное, дикое и необузданное."
        textView.frame = view.bounds
        textView.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        view.addSubview(textView)
        
        view.backgroundColor = UIColor.white
        
        
        
        
        
}
    

    
    @objc func nextButton(paramSender: Any) {
        let secondVC = ViewController2()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc func saveButton(_:UIButton) {
        let alert = UIAlertController(title: "Success!", message: "Info saved", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }


}

