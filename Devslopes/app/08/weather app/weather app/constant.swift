//
//  constant.swift
//  weather app
//
//  Created by Johnson Lai on 20/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import Foundation

let API_KEY = ""

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=\(API_KEY)"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&mode=json&appid=\(API_KEY)"
