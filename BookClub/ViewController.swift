//
//  ViewController.swift
//  BookClub
//
//  Created by Crisis Core on 11/9/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainCollectionView.delegate = self
        self.mainCollectionView.dataSource = self
        
        cellRegister()
        
    }
    
    func cellRegister() {
        CellRegisterUtil.cellRegister(nibName: "BannerCollectionViewCell", collectionView: self.mainCollectionView)
        
        CellRegisterUtil.cellRegister(nibName: "LatestBooksCollectionViewCell", collectionView: self.mainCollectionView)
        
         CellRegisterUtil.cellRegister(nibName: "BookNewsViewCell", collectionView: self.mainCollectionView)
    }


}

extension ViewController : UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "BannerViewController") as! UINavigationController
        
        _ = navigationController.viewControllers[0] as! BannerViewController
        
//        vc.newsTitle = news[indexPath.row]
//        vc.mNews = News()
        
        self.present(navigationController , animated: true , completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.row == 0 {
            return CGSize(width: self.view.frame.width , height: 250)
        } else {
            return CGSize(width: self.view.frame.width , height: 250)
        }
        
    }
    
}

extension ViewController : UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if indexPath.section == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell", for: indexPath) as! BannerCollectionViewCell
            
            return cell
        }else if indexPath.section == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LatestBooksCollectionViewCell", for: indexPath) as! LatestBooksCollectionViewCell
            
            return cell
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookNewsViewCell", for: indexPath) as! BookNewsViewCell
            
            return cell
        }
    }
    
    
    
}

