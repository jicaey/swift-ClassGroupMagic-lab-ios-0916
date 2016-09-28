//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Michael Young on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate {
    var latitude = Double()
    var longitude = Double()
    
    var isInNorthernHemisphere: Bool {
        get {
            if latitude >= 0 {
            }
            return true
        }
    }
    var isInSoutherHemisphere: Bool {
        get {
            if longitude < 0 {
            }
            return true
        }
    }
    var isInWesternHemisphere: Bool {
        get {
            if longitude >= 0 {
            }
            return true
        }
    }
    var isInEasternHemisphere: Bool {
        get {
            if latitude < 0 {
            }
            return true
        }
    }
    
    
    func distanceTo(coordinate: Coordinate) -> Double{
        let latitude2 = self.latitude.radians
        let longitude2 = self.longitude.radians
        return acos(sin(latitude) * sin(latitude2) + cos(latitude) * cos(latitude2) * cos(longitude-longitude2)) * 6371000 / 1000
    }
}

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
