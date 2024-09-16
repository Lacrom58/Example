//
//  ViewController.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helper.addPeoples(User(name: "Mike", secondName: "Brown", login: "mike23", password: "qwerty2"))
        print(helper.getPeople())
      
       
    }
}

