//
//  HomeViewController.swift
//  carousel
//
//  Created by Filipe Catarino Merli on 26/09/19.
//  Copyright © 2019 Filipe Catarino Merli. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var stackViewCarousel: UIStackView!
    
    let collectionDataSource = CollectionDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = collectionDataSource
        collectionView.contentInsetAdjustmentBehavior = .always
        self.collectionView!.register(CollectionViewCell.self, forCellWithReuseIdentifier: "celula")
    }

    override func viewDidAppear(_ animated: Bool) {
        let numberOfItems = stackViewCarousel.arrangedSubviews.count
        let carouselHeight = (Int(stackViewCarousel.frame.height) / numberOfItems) - 80
        let carouselWidth = Int((carouselHeight * 6) / 9)
        collectionView.collectionViewLayout = ZoomAndSnapFlowLayout(wi: carouselWidth, he: carouselHeight)
    }


}
