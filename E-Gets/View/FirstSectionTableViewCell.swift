//
//  FirstSectionTableViewCell.swift
//  E-Gets

//
//  Created by Chenghav on 3/1/24.
//

import UIKit

class FirstSectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var foodImage = ["Beef Roll", "Beef", "Ice Cream", "Zuchhi"]
    var timer     : Timer?
    var currentIndex = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.dataSource  = self
        collectionView.delegate    = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        
    }
    
    @objc func slideToNext() {
    
        if currentIndex < foodImage.count - 1 {
            
            currentIndex = currentIndex + 1
            
        }else {
            
            currentIndex = 0
            
        }
        
        collectionView.scrollToItem(at: IndexPath(item: currentIndex, section: 0), at: .right, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AutoSlideCollectionViewCell", for: indexPath) as! AutoSlideCollectionViewCell
        cell.imageView.image = UIImage(named: foodImage[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 393, height: 160)
    }
    
}
