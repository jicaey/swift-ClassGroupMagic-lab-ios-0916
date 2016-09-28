//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Michael Young on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var firstName = String()
    var lastName = String()
    var home = Coordinate()
    var isHungry = true
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    func eatPizzaFrom(service: PizzaDeliveryService) -> Bool {
        if service.isInRange(destination: home) && isHungry == true {
            return false
        } else {
            return true
        }
    }
    
}
