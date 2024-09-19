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
        
        for helper in helper.getPeople() {
           print(helper.person) 
        }
        
     
            
        }
      
       
    }


