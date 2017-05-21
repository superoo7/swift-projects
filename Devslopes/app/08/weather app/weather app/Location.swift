//
//  Location.swift
//  weather app
//
//  Created by Johnson Lai on 21/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import CoreLocation
import Foundation

class Location {
    static var sharedInstance = Location()
    private init() { }
    
    var latitude: Double!
    var longitude: Double!
}
