//
//  Person.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 14.09.2024.
//

import Foundation

struct Person  {
    var name: String
    var secondName: String
    
    var fullName: String {
        name + secondName
    }
}
  
struct User {
    let person: Person
    var login: String
    var password: String
}
    


