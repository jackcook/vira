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
            self.weatherLabel.text = "\(Int(forecast.apparentTemperatureHigh)) / \(Int(forecast.apparentTemperatureLow))"
        }
        
        MITShuttle.shared.getPredictions { (stop) in
            let times = stop.predictions.map({ (prediction) -> String in
                let seconds = prediction.seconds
                
                if seconds < 60 {
                    return "Arriving"
                } else if seconds < 120 {
                    return "1 min"
                } else {
                    return "\(Int(seconds / 60)) mins"
                }
            })
            
            self.shuttleLabel.text = "\(times[0]), \(times[1])"
        }
        
        weatherImage.tintColor = .white
        shuttleImage.tintColor = .white
    }
}
