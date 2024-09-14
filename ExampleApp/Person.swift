//
//  Person.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 14.09.2024.
//

import Foundation

class Person  {
    
    let name: String
    let secondName: String
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
    
    var fullName: String {
        name + secondName
    }

     func viewDidLoad() {
        print(fullName)
    }
}
