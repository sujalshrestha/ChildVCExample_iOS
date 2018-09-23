//
//  ChildController.swift
//  ChildVCExampleiOS
//
//  Created by Sujal on 9/23/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ChildController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let contentCellId = "contentCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    fileprivate func setupCollectionView() {
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.backgroundColor = .lightGray
        let nib = UINib(nibName: "ContentCell", bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: contentCellId)
        collectionView?.register(ContentCell.self, forCellWithReuseIdentifier: "cellId")
    }
}

extension ChildController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: contentCellId, for: indexPath) as! ContentCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: view.frame.height-60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
}

