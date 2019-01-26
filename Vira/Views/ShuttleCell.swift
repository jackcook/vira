//
//  ShuttleCell.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

class ShuttleCell: UITableViewCell {
    
    // MARK: - Properties
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var shuttleLabel: UILabel!
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - View Life Cycle
    
    override func awakeFromNib() {
        iconView.tintColor = .white
        
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
    }
}
