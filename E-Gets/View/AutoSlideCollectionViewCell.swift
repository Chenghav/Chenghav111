//
//  AutoSlideCollectionViewCell.swift
//  E-Gets
//
//  Created by Chenghav on 3/1/24.
//

import UIKit


class AutoSlideCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 10
    }
}
