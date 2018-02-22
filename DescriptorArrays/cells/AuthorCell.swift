//
//  AuthorCell.swift
//  DescriptorArrays
//
//  Created by Martin Mitrevski on 21.02.18.
//  Copyright © 2018 Mitrevski. All rights reserved.
//

import UIKit

class AuthorCell: UITableViewCell {

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!

    func setup(withAuthor author: String, location: String? = nil) {
        authorLabel.text = author
        locationLabel.text = location
    }
}
