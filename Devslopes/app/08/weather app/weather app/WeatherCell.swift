//
//  WeatherCell.swift
//  weather app
//
//  Created by Johnson Lai on 21/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!
 
    func configureCell(forecast: Forecast) {
        lowTempLabel.text = "\(forecast.lowTemp)°C"
        highTempLabel.text = "\(forecast.highTemp)°C"
        dayLabel.text = forecast.date
        weatherTypeLabel.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }

}
