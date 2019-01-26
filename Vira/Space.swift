//
//  Space.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

struct Space: ViraCellDescriptor {
    
    var identifier: String {
        return "SpaceCell"
    }
    
    var height: CGFloat {
        return spaceHeight
    }
    
    let spaceHeight: CGFloat
    
    init(height: CGFloat) {
        spaceHeight = height
    }
}
