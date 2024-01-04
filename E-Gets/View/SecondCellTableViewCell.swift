//
//  SecondCellTableViewCell.swift
//  E-Gets
//
//  Created by Chenghav on 3/1/24.
//

import UIKit

class SecondCellTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var collectionView: UICollectionView!
    
    var sectionTitle = ["", ""]
    var foodImage    = ["spega" ,"bur" ,"strawb" ,"good" ,"Beef Roll", "Beef", "Ice Cream", "Zuchhi"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource  = self
        collectionView.delegate    = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageMidCollectionViewCell", for: indexPath) as! ImageMidCollectionViewCell
        cell.imageView.image = UIImage(named: foodImage[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 361, height: 160)
    }
    

}
