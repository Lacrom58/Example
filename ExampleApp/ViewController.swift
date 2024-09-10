//
//  ViewController.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let name = "Sergey"
    let secondName = "Ustinov"
    
    var fullName: String {
        name + secondName
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(fullName)
    }
}

