//
//  FirstCollectionViewCell.swift
//  JustForPDP
//
//  Created by Samandar on 30/04/24.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {
    
    static let identity = "FirstCollectionViewCell"
    
    private var imageView: UIImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        // Configure imageView
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        addSubview(imageView)
        
        // Add constraints for imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    
    
    func setImage(imageName: String) {
        imageView.image = UIImage(named: imageName)
    }
    
    
    
}
