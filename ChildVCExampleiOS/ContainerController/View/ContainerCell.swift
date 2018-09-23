//
//  ContainerCell.swift
//  ChildVCExampleiOS
//
//  Created by Sujal on 9/23/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ContainerCell: UITableViewCell {
    
    let headerTitle: UILabel = {
        let label = UILabel()
        label.text = "Attractions Nearby"
        label.textColor = UIColor.init(white: 1, alpha: 0.8)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    let moreButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("MORE", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.setTitleColor(.orange, for: .normal)
        return btn
    }()
    
    weak var containerController: ContainerController? {
        didSet {
            setupChildViews()
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        
        addSubview(headerTitle)
        headerTitle.anchor(top: topAnchor, paddingTop: 5, bottom: nil, paddingBottom: 0, left: leftAnchor, paddingLeft: 10, right: nil, paddingRight: 0, width: 0, height: 0)
        
        addSubview(moreButton)
        moreButton.anchor(top: topAnchor, paddingTop: 0, bottom: nil, paddingBottom: 0, left: nil, paddingLeft: 0, right: rightAnchor, paddingRight: 10, width: 0, height: 0)
    }
    
    fileprivate func setupChildViews() {
        guard let containerController = containerController else { return }
        let flowlayout = UICollectionViewFlowLayout()
        let contentCollection = ChildController(collectionViewLayout: flowlayout)
        flowlayout.scrollDirection = .horizontal
        
        containerController.addChild(contentCollection)
        addSubview(contentCollection.view)
        contentCollection.didMove(toParent: containerController)
        
        contentCollection.view.anchor(top: headerTitle.bottomAnchor, paddingTop: 5, bottom: bottomAnchor, paddingBottom: 0, left: leftAnchor, paddingLeft: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

