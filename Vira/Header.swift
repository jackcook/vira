//
//  Header.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

struct Header: ViraCellDescriptor {
    
    static let identifier = "HeaderCell"
    
    var identifier: String {
        return "HeaderCell"
    }
    
    var height: CGFloat {
        return 29
    }
    
    var text: String
    
    init(text: String) {
        self.text = text
    }
}
