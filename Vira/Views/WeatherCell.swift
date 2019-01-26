//
//  WeatherCell.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    // MARK: - Properties
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - View Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        iconView.tintColor = .white
        
        Forecast.shared.getWeather { (forecast) in
            self.weatherLabel.text = "\(Int(forecast.apparentTemperatureHigh)) / \(Int(forecast.apparentTemperatureLow))"
        }
    }
}
