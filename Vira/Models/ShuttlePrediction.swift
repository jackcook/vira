//
//  ShuttlePrediction.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import SwiftyJSON

struct ShuttlePrediction {
    
    // MARK: - Properties
    
    let vehicleId: String
    let timestamp: Date
    let seconds: Int
    
    // MARK: - Initialization
    
    init(json: JSON) {
        vehicleId = json["vehicleId"].string ?? ""
        timestamp = Date(timeIntervalSince1970: json["timestamp"].double ?? 0)
        seconds = json["seconds"].int ?? 0
    }
}
