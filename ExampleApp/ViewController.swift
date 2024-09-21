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
        
        let user = User(person: Person(name: "Mike", secondName: "Tyson"), login: "mike23", password: "qwerty23")
        
        helper.addPeoples(user)
        
        for helper in helper.getPeople() {
            print(helper.person.fullName)
            
        }
    
       
        
    }
    
}
