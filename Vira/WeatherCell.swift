//
//  WeatherCell.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

class WeatherCell: ViraCell {
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func configure(descriptor: ViraCellDescriptor) {
        super.configure(descriptor: descriptor)
        
        iconView.tintColor = .white
        
        Forecast.shared.getWeather { (forecast) in
            self.weatherLabel.text = "\(Int(forecast.apparentTemperatureHigh)) / \(Int(forecast.apparentTemperatureLow))"
        }
    }
}
