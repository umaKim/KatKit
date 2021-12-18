//
//  KatViewDelegate.swift
//  
//
//  Created by UmaKim on 2021/12/19.
//

import UIKit
//MARK: - KatView Delegate
public protocol KatViewDelegate: AnyObject {
    func katViewCellDidTap(category: String, dudSelectItemAt indexPath: IndexPath)
}
