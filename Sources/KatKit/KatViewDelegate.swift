//
//  KatViewDelegate.swift
//  
//
//  Created by UmaKim on 2021/12/19.
//

import UIKit
//MARK: - KatView Delegate
public protocol KatViewDelegate: AnyObject {
    func katViewCellDidTap(_ katView: UICollectionView, didSelectItemAt indexPath: IndexPath)
}

extension KatViewDelegate {
    func katViewCellDidTap(_ katView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

//class KatViewDelegate: NSObject, UICollectionViewDelegate {
//    private var categories: [String]
//    
//    private var delegate: KatViewTappable?
//    
//    public init(categories: [String]) {
//        self.categories = categories
//        super.init()
//    }
//    
//    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
//        delegate?.katViewCellDidTap(category: categories[indexPath.row], dudSelectItemAt: indexPath)
//    }
//}
