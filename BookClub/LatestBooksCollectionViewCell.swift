//
//  LatestBooksCollectionViewCell.swift
//  BookClub
//
//  Created by Crisis Core on 11/9/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class LatestBooksCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var latestCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.latestCollectionView.dataSource = self
        self.latestCollectionView.delegate = self
        
        CellRegisterUtil.cellRegister(nibName: "LatestBookViewCell", collectionView: self.latestCollectionView)
        
    }
    
    @IBAction func onClickSeeAll(_ sender: UIButton) {
//        let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "BannerViewController") as! UINavigationController
//
//        _ = navigationController.viewControllers[0] as! BannerViewController
//
//        //        vc.newsTitle = news[indexPath.row]
//        //        vc.mNews = News()
//
//        self.present(navigationController , animated: true , completion: nil)
        
        
    }
    
}

extension LatestBooksCollectionViewCell : UICollectionViewDelegateFlowLayout , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LatestBookViewCell", for: indexPath) as! LatestBookViewCell
        
        return cell
        
    }
    
}

extension LatestBooksCollectionViewCell : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120 , height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
}
