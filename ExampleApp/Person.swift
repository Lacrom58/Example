//
//  Person.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 14.09.2024.
//

import Foundation

struct Person  {
}
struct User {
    var name: String
    var secondName: String
    var login: String
    var password: String
}
    
    var user = User (
        name: "Mike",
        secondName: "Brown",
        login: "mike23",
        password: "qwerty2")
    

     func viewDidLoad() {
        print(user)
    }

