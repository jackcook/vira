//
//  CurrentWeatherForecast.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import SwiftyJSON

struct CurrentWeatherForecast {
    
    // MARK: - Properties
    
    let time: Date
    let summary: String
    let icon: String
    let nearestStormDistance: Float
    let nearestStormBearing: Float
    let precipIntensity: Float
    let precipProbability: Float
    let temperature: Float
    let apparentTemperature: Float
    let dewPoint: Float
    let humidity: Float
    let pressure: Float
    let windSpeed: Float
    let windGust: Float
    let windBearing: Float
    let cloudCover: Float
    let uvIndex: Float
    let visibility: Float
    let ozone: Float
    
    // MARK: - Initialization
    
    init?(json: JSON) {
        guard let current = json["currently"].dictionary else {
            return nil
        }
        
        time = Date(timeIntervalSince1970: current["time"]?.double ?? 0)
        summary = current["summary"]?.string ?? ""
        icon = current["icon"]?.string ?? ""
        nearestStormDistance = current["nearestStormDistance"]?.float ?? 0
        nearestStormBearing = current["nearestStormBearing"]?.float ?? 0
        precipIntensity = current["precipIntensity"]?.float ?? 0
        precipProbability = current["precipProbability"]?.float ?? 0
        temperature = current["temperature"]?.float ?? 0
        apparentTemperature = current["apparentTemperature"]?.float ?? 0
        dewPoint = current["dewPoint"]?.float ?? 0
        humidity = current["humidity"]?.float ?? 0
        pressure = current["pressure"]?.float ?? 0
        windSpeed = current["windSpeed"]?.float ?? 0
        windGust = current["windGust"]?.float ?? 0
        windBearing = current["windBearing"]?.float ?? 0
        cloudCover = current["cloudCover"]?.float ?? 0
        uvIndex = current["uvIndex"]?.float ?? 0
        visibility = current["visibility"]?.float ?? 0
        ozone = current["ozone"]?.float ?? 0
    }
}
