//
//  ViewController.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let repository = UserRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        view.alpha = 0.9
        
        helper.addMorePeoples(repository.getPeople())
      
      
        for helper in helper.getPeople() {
            print(helper.person.fullName)
            
        }
    
       
        
    }
    
}



