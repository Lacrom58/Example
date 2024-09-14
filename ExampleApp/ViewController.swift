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
        helper.addPeoples(name: "Mike", secondName: "Brown")
        helper.addPeoples(name: "Linda", secondName: "Price")
        print(helper.getPeople())
      
       
    }
}

