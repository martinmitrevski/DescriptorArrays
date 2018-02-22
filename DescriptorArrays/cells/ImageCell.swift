//
//  ImageCell.swift
//  DescriptorArrays
//
//  Created by Martin Mitrevski on 21.02.18.
//  Copyright © 2018 Mitrevski. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var bookImage: UIImageView!
    
    func setup(withImagePath imagePath: String) {
        bookImage.image = UIImage(named: imagePath)
    }
}
