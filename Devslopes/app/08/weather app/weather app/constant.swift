//
//  constant.swift
//  weather app
//
//  Created by Johnson Lai on 20/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = ""

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)3.08\(LONGITUDE)101.70\(APP_ID)\(API_KEY)"

