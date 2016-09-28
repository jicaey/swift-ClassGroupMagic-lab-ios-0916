//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Michael Young on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    var location = Coordinate()
    var pizzasAvailable: Int = 10
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(destination: Coordinate) -> Bool {
        var withinRange = Bool()
        if destination.distanceTo(coordinate: destination) < 5000 {
            withinRange = true
        } else {
            withinRange = false
        }
        return withinRange
    }
}
