//
//  ImageMidCollectionViewCell.swift
//  E-Gets
//
//  Created by Chenghav on 3/1/24.
//

import UIKit

class ImageMidCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 10
        imageView.layer.cornerRadius = 10
        imageView.layer.borderColor  = #colorLiteral(red: 0.9909200072, green: 0.6054287553, blue: 0.2102912962, alpha: 1)
        imageView.layer.borderWidth  = 1
    }
}
