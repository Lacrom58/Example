//
//  UserRepository.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 23.09.2024.
//

import Foundation

class UserRepository {
    
    func getPeople() -> [User] {
       [User(person: Person(name: "Mike", secondName: "Tyson"), 
             login: "mike23", password: "qwerty2"),
        User(person: Person(name: "Arturo", secondName: "Gatti"),
             login: "gatti43", password: "thunder")
       
       ]
        
    }
}
