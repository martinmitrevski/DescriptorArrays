//
//  TitleCell.swift
//  DescriptorArrays
//
//  Created by Martin Mitrevski on 21.02.18.
//  Copyright © 2018 Mitrevski. All rights reserved.
//

import UIKit

class TitleCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(withTitle title: String) {
        titleLabel.text = title
    }
}
