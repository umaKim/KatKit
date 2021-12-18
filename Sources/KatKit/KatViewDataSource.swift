//
//  KatViewDataSource.swift
//  
//
//  Created by 김윤석 on 2021/12/19.
//

import UIKit

public protocol KatViewDataSource: AnyObject {
    func katView(numberOfItemsInSection section: Int) -> Int
    func katView(_ katView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
}
 
//class KatViewDataSource: NSObject, UICollectionViewDataSource {
//    
//    private var categories: [String]
//    
//    public init(categories: [String]) {
//        self.categories = categories
//        super.init()
//    }
//    
//    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        categories.count
//    }
//    
//    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: KatViewCell.identifier, for: indexPath) as? KatViewCell else { return UICollectionViewCell() }
//        cell.configure(with: categories[indexPath.row])
//        return cell
//    }
//}
