//
//  Person.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 14.09.2024.
//

import Foundation

class Person  {
    
    let name = "Sergey"
    let secondName = "Ustinov"
    
    var fullName: String {
        name + secondName
    }

     func viewDidLoad() {
        print(fullName)
    }
}
