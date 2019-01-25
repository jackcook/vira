//
//  DailyWeatherForecast.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import SwiftyJSON

struct DailyWeatherForecast {
    
    let time: Date
    let summary: String
    let icon: String
    let sunriseTime: Date
    let sunsetTime: Date
    let moonPhase: Float
    let precipIntensity: Float
    let precipIntensityMax: Float
    let precipIntensityMaxTime: Date
    let precipProbability: Float
    let precipAccumulation: Float
    let precipType: String
    let temperatureHigh: Float
    let temperatureHighTime: Date
    let temperatureLow: Float
    let temperatureLowTime: Date
    let apparentTemperatureHigh: Float
    let apparentTemperatureHighTime: Date
    let apparentTemperatureLow: Float
    let apparentTemperatureLowTime: Date
    let dewPoint: Float
    let humidity: Float
    let pressure: Float
    let windSpeed: Float
    let windGust: Float
    let windGustTime: Date
    let windBearing: Float
    let cloudCover: Float
    let uvIndex: Float
    let uvIndexTime: Date
    let visibility: Float
    let ozone: Float
    let temperatureMin: Float
    let temperatureMinTime: Date
    let temperatureMax: Float
    let temperatureMaxTime: Date
    let apparentTemperatureMin: Float
    let apparentTemperatureMinTime: Date
    let apparentTemperatureMax: Float
    let apparentTemperatureMaxTime: Date
    
    init?(json: JSON) {
        guard let json = json["daily"]["data"].array?.first else {
            return nil
        }
        
        time = Date(timeIntervalSince1970: json["time"].double ?? 0)
        summary = json["summary"].string ?? ""
        icon = json["icon"].string ?? ""
        sunriseTime = Date(timeIntervalSince1970: json["sunriseTime"].double ?? 0)
        sunsetTime = Date(timeIntervalSince1970: json["sunsetTime"].double ?? 0)
        moonPhase = json["moonPhase"].float ?? 0
        precipIntensity = json["precipIntensity"].float ?? 0
        precipIntensityMax = json["precipIntensityMax"].float ?? 0
        precipIntensityMaxTime = Date(timeIntervalSince1970: json["precipIntensityMaxTime"].double ?? 0)
        precipProbability = json["precipProbability"].float ?? 0
        precipAccumulation = json["precipAccumulation"].float ?? 0
        precipType = json["precipType"].string ?? ""
        temperatureHigh = json["temperatureHigh"].float ?? 0
        temperatureHighTime = Date(timeIntervalSince1970: json["temperatureHighTime"].double ?? 0)
        temperatureLow = json["temperatureLow"].float ?? 0
        temperatureLowTime = Date(timeIntervalSince1970: json["temperatureLowTime"].double ?? 0)
        apparentTemperatureHigh = json["apparentTemperatureHigh"].float ?? 0
        apparentTemperatureHighTime = Date(timeIntervalSince1970: json["apparentTemperatureHighTime"].double ?? 0)
        apparentTemperatureLow = json["apparentTemperatureLow"].float ?? 0
        apparentTemperatureLowTime = Date(timeIntervalSince1970: json["apparentTemperatureLowTime"].double ?? 0)
        dewPoint = json["dewPoint"].float ?? 0
        humidity = json["humidity"].float ?? 0
        pressure = json["pressure"].float ?? 0
        windSpeed = json["windSpeed"].float ?? 0
        windGust = json["windGust"].float ?? 0
        windGustTime = Date(timeIntervalSince1970: json["windGustTime"].double ?? 0)
        windBearing = json["windBearing"].float ?? 0
        cloudCover = json["cloudCover"].float ?? 0
        uvIndex = json["uvIndex"].float ?? 0
        uvIndexTime = Date(timeIntervalSince1970: json["uvIndexTime"].double ?? 0)
        visibility = json["visibility"].float ?? 0
        ozone = json["ozone"].float ?? 0
        temperatureMin = json["temperatureMin"].float ?? 0
        temperatureMinTime = Date(timeIntervalSince1970: json["temperatureMinTime"].double ?? 0)
        temperatureMax = json["temperatureMax"].float ?? 0
        temperatureMaxTime = Date(timeIntervalSince1970: json["temperatureMaxTime"].double ?? 0)
        apparentTemperatureMin = json["apparentTemperatureMin"].float ?? 0
        apparentTemperatureMinTime = Date(timeIntervalSince1970: json["apparentTemperatureMinTime"].double ?? 0)
        apparentTemperatureMax = json["apparentTemperatureMax"].float ?? 0
        apparentTemperatureMaxTime = Date(timeIntervalSince1970: json["apparentTemperatureMaxTime"].double ?? 0)
    }
}
