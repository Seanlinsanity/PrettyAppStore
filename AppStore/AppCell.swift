//
//  AppCell.swift
//  AppStore
//
//  Created by SEAN on 2018/3/13.
//  Copyright © 2018年 SEAN. All rights reserved.
//

import UIKit

class AppCell: UICollectionViewCell {
    
    let namelabel: UILabel = {
        let lb = UILabel()
        lb.text = "StarBucks TW"
        lb.numberOfLines = 2
        lb.font = UIFont.boldSystemFont(ofSize: 14)
        return lb
    }()
    
    let categoryLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Food & Drink"
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 13)
        return lb
    }()
    
    let priceLabel: UILabel = {
        let lb = UILabel()
        lb.text = "$3.99"
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 13)
        return lb
    }()
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "starbucks")
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 16
        iv.clipsToBounds = true
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        
    }
    
    func setupViews(){
        addSubview(imageView)
        addSubview(namelabel)
        addSubview(categoryLabel)
        addSubview(priceLabel)
        
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        namelabel.frame = CGRect(x: 0, y: frame.width + 2, width: frame.width, height: 40)
        categoryLabel.frame = CGRect(x: 0, y: frame.width + 38, width: frame.width, height: 20)
        priceLabel.frame = CGRect(x: 0, y: frame.width + 56, width: frame.width, height: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
