//
//  ViraItem.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

enum ViraItem {
    
    case header(String)
    case weather
    case shuttle
    case space(CGFloat)
    
    var height: CGFloat {
        switch self {
        case .header(_):
            return 29
        case .weather, .shuttle:
            return 44
        case .space(let height):
            return height
        }
    }
    
    var identifier: String {
        switch self {
        case .header(_):
            return "HeaderCell"
        case .weather:
            return "WeatherCell"
        case .shuttle:
            return "ShuttleCell"
        case .space(_):
            return "SpaceCell"
        }
    }
}
