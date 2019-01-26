//
//  Weather.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

struct Weather: ViraCellDescriptor {
    
    static let identifier = "WeatherCell"
    
    var identifier: String {
        return "WeatherCell"
    }
    
    var height: CGFloat {
        return 44
    }
}
