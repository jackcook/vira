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
        
        MITShuttle.shared.getPredictions { (stop) in
            let minutes = stop.predictions.map({ Int($0.seconds / 60) })
            
            self.shuttleLabel.text = "\(minutes[0]) mins, \(minutes[1]) mins"
        }
        
        weatherImage.tintColor = .white
        shuttleImage.tintColor = .white
    }
}
