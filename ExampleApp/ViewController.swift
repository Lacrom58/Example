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
    private let button = CustomButton(buttonName: "Show new User", color: .red, needShadow: false)
    private let secondButton = CustomButton(buttonName: "Hide user", color: .green, needShadow: true)
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        
        helper.addMorePeoples(repository.getPeople())
        
        setupLabel()
        setupStackView()
        view.addSubview(stackView)
        setupLayout()
        
        
        
        
        for helper in helper.getPeople() {
            print(helper.person.fullName)
            
            
        }
 
    }
    
    private func setupLabel(){
        let fullName = helper.getPeople().randomElement()
        textLabel.text = fullName?.person.fullName
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .white
        textLabel.textAlignment = .center
    }
    
  
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(button)
        stackView.addArrangedSubview(secondButton)
    }
    
    private func setupLayout() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.8),

        ])
    }
    
}
    




