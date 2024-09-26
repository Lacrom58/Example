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
    private let textLabel = UILabel()
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        setupLabel()
        view.addSubview(textLabel)
        
        helper.addMorePeoples(repository.getPeople())
      
      
        for helper in helper.getPeople() {
            print(helper.person.fullName)
            
        }
 
    }
    private func setupLabel(){
        let fullName = helper.getPeople().randomElement()
        textLabel.text = fullName?.person.fullName
        textLabel.font = .systemFont(ofSize: 30, weight: .bold)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
    
}



