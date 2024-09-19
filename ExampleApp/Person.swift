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
    var login: String
    var password: String
    
}
    var person = Person (
        name: "Mike",
        secondName: "Brown",
        login: "mike23",
        password: "qwerty2")
    

     func viewDidLoad() {
        print(person)
}
struct User {
    let person: Person
    
    
    }
    


