//
//  Helper.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 14.09.2024.
//

import Foundation



class Helper {
    
    private var people: [String] = []
    
    func addPeoples(name: String, secondName: String) {
        people.append(name)
    }
    func getPeople() -> [String] {
        people
    }
    
}
