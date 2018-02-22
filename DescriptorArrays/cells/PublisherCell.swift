//
//  PublisherCell.swift
//  DescriptorArrays
//
//  Created by Martin Mitrevski on 21.02.18.
//  Copyright © 2018 Mitrevski. All rights reserved.
//

import UIKit

class PublisherCell: UITableViewCell {

    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var publisherLogo: UIImageView!
    
    func setup(withPublisher publisher: String, logoPath: String? = nil) {
        publisherLabel.text = publisher
        guard let logoPath = logoPath else {
            return
        }
        publisherLogo.image = UIImage(named: logoPath)
    }
}
