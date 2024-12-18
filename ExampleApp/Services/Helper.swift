//
//  Helper.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 14.09.2024.
//

import Foundation



class Helper {
    
    private var people: [User] = []
    
    func addPeoples(_ user: User) {
        people.append(user)
    }
    func getPeople() -> [User] {
        people
    }
    func showRandomUser() -> User? {
        people.randomElement() 
    }
    
    func addMorePeoples(_ user: [User]) {
        for person in user {
            people.append(person)
            
        }
    }
}


