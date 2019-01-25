//
//  MainViewController.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var shuttleImage: UIImageView!
    @IBOutlet weak var shuttleLabel: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Forecast.shared.getWeather { (forecast) in
            self.weatherLabel.text = "\(Int(forecast.temperatureHigh)) / \(Int(forecast.temperatureLow))"
        }
        
        weatherImage.tintColor = .white
        shuttleImage.tintColor = .white
    }
}
