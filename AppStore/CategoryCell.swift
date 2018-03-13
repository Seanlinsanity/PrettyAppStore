//
//  CategoryCell.swift
//  AppStore
//
//  Created by SEAN on 2018/3/13.
//  Copyright © 2018年 SEAN. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    
    let appsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let categoryNameLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Best New App"
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        return lb
    }()
    
    let seperatorLineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 0.4, alpha: 0.4)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    func setupViews(){
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        appsCollectionView.dataSource = self
        appsCollectionView.delegate = self
        
        addSubview(categoryNameLabel)
        categoryNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14).isActive = true
        categoryNameLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        categoryNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        categoryNameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true

        addSubview(appsCollectionView)
        appsCollectionView.topAnchor.constraint(equalTo: categoryNameLabel.bottomAnchor).isActive = true
        appsCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        appsCollectionView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        appsCollectionView.heightAnchor.constraint(equalTo: heightAnchor, constant: -30).isActive = true
        
        addSubview(seperatorLineView)
        seperatorLineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14).isActive = true
        seperatorLineView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        seperatorLineView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        seperatorLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: frame.height - 30)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}







