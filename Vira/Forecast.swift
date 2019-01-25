//
//  Forecast.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import SwiftyJSON

class Forecast {
    
    public class var shared: Forecast {
        struct Static {
            static let instance = Forecast()
        }
        
        return Static.instance
    }
    
    public func getWeather(completion: @escaping (DailyWeatherForecast) -> ()) {
        let url = URL(string: "https://api.darksky.net/forecast/5c71a9f520d09d38b1feaeca3f988a07/42.3601,-71.0942")!
        let request = URLRequest(url: url)
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request) { (data, response, error) in
            guard let data = data, let json = try? JSON(data: data), let forecast = DailyWeatherForecast(json: json) else {
                return
            }
            
            DispatchQueue.main.async {
                completion(forecast)
            }
        }
        
        task.resume()
    }
}
