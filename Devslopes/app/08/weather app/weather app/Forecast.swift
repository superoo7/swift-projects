//
//  Forecast.swift
//  weather app
//
//  Created by Johnson Lai on 20/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String! {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        
        
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            // minimum temp
            if let min = temp["min"] as? Double {
                let kelvinToCelcius: Double = Double(min  - 273).roundTo(places: 2)
                self._lowTemp = String(kelvinToCelcius)
            } // min
            print(self._lowTemp);
            
            // maximum temp
            if let max = temp["max"] as? Double {
                let kelvinToCelcius: Double =  Double(max - 273).roundTo(places: 2)
                self._highTemp = String(kelvinToCelcius)
            } // max
            print(self._highTemp);
        } // temp
        
        // weather type
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            } // main
            print(self._weatherType)
        } // weather
        
        // date
        // UNIX TimeString
        if let date = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
        print(self._date)
        
        
    } // init
    
} // class Forecast




extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"   //day of week
        
        return dateFormatter.string(from: self)
    } // func
} // extension Date

extension Double {
    /// Rounds the double to decimal places value
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
