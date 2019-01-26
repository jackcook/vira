//
//  HeaderCell.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

class HeaderCell: ViraCell {
    
    @IBOutlet weak var headerLabel: UILabel!
    
    private var header: Header!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func configure(descriptor: ViraCellDescriptor) {
        guard let header = descriptor as? Header else {
            return
        }
        
        headerLabel.text = header.text
    }
}
