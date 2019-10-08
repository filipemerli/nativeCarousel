//
//  CollectionDataSource.swift
//  carousel
//
//  Created by Filipe Catarino Merli on 25/09/19.
//  Copyright © 2019 Filipe Catarino Merli. All rights reserved.
//

import UIKit

class CollectionDataSource: NSObject, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celula", for: indexPath) as! CollectionViewCell
        return cell
    }
    
}
