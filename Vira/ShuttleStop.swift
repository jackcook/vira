//
//  ShuttleStop.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import CoreLocation
import SwiftyJSON

struct ShuttleStop {
    
    let id: String
    let url: URL?
    let title: String
    let stopNumber: Int
    let location: CLLocation
    let predictions: [ShuttlePrediction]
    let predictionsURL: URL?
    let routeId: String
    let routeURL: URL?
    
    init(json: JSON) {
        id = json["id"].string ?? ""
        url = json["url"].url
        title = json["title"].string ?? ""
        stopNumber = json["stop_number"].int ?? 0
        location = CLLocation(latitude: CLLocationDegrees(json["lat"].float ?? 0), longitude: CLLocationDegrees(json["lon"].float ?? 0))
        predictions = (json["predictions"].array ?? []).map({ ShuttlePrediction(json: $0) })
        predictionsURL = json["predictions_url"].url
        routeId = json["route_id"].string ?? ""
        routeURL = json["route_url"].url
    }
}
