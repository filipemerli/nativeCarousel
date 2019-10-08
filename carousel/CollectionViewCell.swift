//
//  CollectionViewCell.swift
//  carousel
//
//  Created by Filipe Catarino Merli on 25/09/19.
//  Copyright © 2019 Filipe Catarino Merli. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var isHeightCalculated: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .lightGray
        contentView.alpha = 0.8
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        //Exhibit A - We need to cache our calculation to prevent a crash.
        if !isHeightCalculated {
            setNeedsLayout()
            layoutIfNeeded()
            let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
            var newFrame = layoutAttributes.frame
            newFrame.size.width = CGFloat(ceilf(Float(size.width)))
            layoutAttributes.frame = newFrame
            isHeightCalculated = true
        }
        return layoutAttributes
    }
    
}
