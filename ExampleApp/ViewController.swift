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
    private let button = UIButton()
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        helper.addMorePeoples(repository.getPeople())
        
        setupLabel()
        setupButton()
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
        textLabel.textColor = .blue
        textLabel.textAlignment = .center
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
    
    private func setupButton() {
        let button = UIButton(type: .system)
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(button)
    }
    
    private func setupLayout() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 200),
            stackView.heightAnchor.constraint(equalToConstant: 400),
            
            button.topAnchor.constraint(equalTo: button.topAnchor),
            button.bottomAnchor.constraint(equalTo: button.bottomAnchor),
            button.leadingAnchor.constraint(equalTo: button.trailingAnchor),
            button.trailingAnchor.constraint(equalTo: button.trailingAnchor),
            
        
        ])
    }
    
}
    




